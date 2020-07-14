.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x154d9, %r10
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %r10
movntdq %xmm5, (%r10)
nop
nop
xor $15613, %r9
lea addresses_WT_ht+0x3d19, %r9
nop
nop
nop
cmp %r13, %r13
mov (%r9), %r12d
nop
cmp $4158, %r8
lea addresses_A_ht+0xc879, %r13
dec %rbx
movb (%r13), %r12b
nop
sub $17549, %r9
lea addresses_UC_ht+0x4a36, %r9
nop
cmp %rdi, %rdi
movups (%r9), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
nop
xor $5526, %rdi
lea addresses_D_ht+0x6d99, %rbx
nop
sub %r8, %r8
mov (%rbx), %r10
nop
nop
nop
nop
nop
and $16510, %r9
lea addresses_WC_ht+0x1e5d9, %r8
nop
lfence
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
movups %xmm1, (%r8)
nop
sub %r8, %r8
lea addresses_UC_ht+0x1d0d9, %rsi
lea addresses_UC_ht+0x17499, %rdi
dec %r9
mov $66, %rcx
rep movsw
nop
nop
sub $45345, %r8
lea addresses_UC_ht+0x11241, %r12
nop
nop
nop
nop
nop
and %rbx, %rbx
movb (%r12), %cl
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1a6d9, %rcx
nop
nop
nop
nop
add %r13, %r13
movb $0x61, (%rcx)
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x9579, %rsi
lea addresses_D_ht+0x8679, %rdi
cmp %r8, %r8
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
add $47231, %r8
lea addresses_WC_ht+0xe860, %r10
add %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r10)
nop
nop
xor $51074, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx

// Store
lea addresses_PSE+0x1ae79, %r9
nop
nop
nop
nop
nop
cmp $33015, %r14
movw $0x5152, (%r9)
nop
xor $46505, %rbx

// Store
mov $0x4dd11b0000000001, %r13
nop
nop
nop
nop
nop
cmp $43493, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
add $10060, %r8

// Load
mov $0x12d7480000000cd9, %r9
nop
cmp $55600, %rcx
mov (%r9), %r14d
nop
add $1562, %r9

// Store
lea addresses_PSE+0x19cd1, %r9
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
sub $15112, %r14

// Load
lea addresses_US+0x58a7, %rcx
nop
nop
add $32743, %r9
mov (%rcx), %r13w
nop
nop
nop
and $59191, %rcx

// Faulty Load
lea addresses_D+0x58d9, %r11
nop
nop
and %r13, %r13
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 37}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
