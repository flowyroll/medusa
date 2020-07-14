.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19c85, %rsi
lea addresses_A_ht+0xf405, %rdi
lfence
mov $58, %rcx
rep movsw
nop
nop
inc %r11
lea addresses_WT_ht+0x15bc5, %r12
nop
nop
cmp $17131, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
nop
cmp $40755, %r12
lea addresses_WC_ht+0x1a005, %r12
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
nop
nop
and $24052, %rdi
lea addresses_A_ht+0x5c05, %rcx
nop
and %r11, %r11
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
sub $10915, %r12
lea addresses_normal_ht+0x16f85, %r12
nop
xor %rdi, %rdi
movb $0x61, (%r12)
nop
nop
add $39438, %rdi
lea addresses_D_ht+0x12f05, %rsi
lea addresses_WT_ht+0x1d185, %rdi
nop
nop
and %rax, %rax
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xb985, %rcx
nop
nop
nop
nop
dec %rsi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
sub $11058, %rsi
lea addresses_WC_ht+0x17405, %r12
nop
nop
and $13, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %r12
vmovaps %ymm7, (%r12)
nop
nop
nop
nop
add $7008, %rdi
lea addresses_normal_ht+0x675a, %r12
nop
inc %rsi
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
cmp $44598, %rcx
lea addresses_normal_ht+0x119a5, %rsi
lea addresses_UC_ht+0x1bea5, %rdi
nop
nop
and %r8, %r8
mov $51, %rcx
rep movsb
nop
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x11405, %rsi
nop
nop
sub %r12, %r12
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x15525, %rax
nop
nop
nop
nop
nop
add $32007, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x14e45, %rsi
dec %r9
movb $0x51, (%rsi)
nop
nop
nop
nop
xor $61541, %r8

// Store
lea addresses_D+0x16405, %r11
clflush (%r11)
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r11)
add %r8, %r8

// Faulty Load
mov $0x150b3e0000000405, %rdx
nop
nop
xor $25830, %rcx
mov (%rdx), %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 852, '58': 12843, '10': 8134}
58 10 10 10 10 10 58 58 10 10 10 58 10 00 58 10 58 10 10 00 58 10 00 10 10 10 10 58 10 58 58 58 00 00 10 58 10 10 58 10 58 10 10 10 00 10 10 58 58 58 10 10 10 58 10 10 58 58 10 10 10 10 58 10 10 58 10 10 10 10 58 58 10 10 10 10 58 10 10 10 58 10 58 10 10 58 10 58 10 10 58 10 10 10 10 58 10 10 10 58 10 10 00 10 10 10 10 10 10 10 10 10 00 00 58 10 10 58 10 00 10 10 10 10 10 10 10 10 10 10 10 58 10 10 58 10 10 58 10 10 10 58 10 10 10 10 10 10 10 10 00 58 10 58 10 58 10 10 10 10 10 10 10 58 10 58 10 10 00 58 10 58 10 10 10 58 10 10 58 10 10 58 10 58 10 58 10 10 10 10 10 10 10 58 10 10 10 10 10 10 58 58 58 10 10 10 10 10 58 10 10 10 10 10 10 58 10 10 10 10 58 10 10 58 10 10 10 10 10 58 10 10 10 10 10 10 10 58 10 10 10 10 58 58 58 10 10 58 10 58 58 10 10 58 10 10 58 58 10 00 58 58 10 58 10 10 58 10 10 10 58 00 10 58 00 58 10 00 10 10 58 10 10 10 58 10 10 10 10 10 10 10 58 10 10 10 10 10 10 10 58 58 00 10 10 58 58 10 58 10 10 10 10 10 10 58 10 10 58 10 58 00 58 10 10 10 10 10 10 10 58 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 00 58 10 58 10 10 10 10 58 10 10 10 10 58 10 58 10 10 58 58 58 10 10 10 10 10 10 58 10 58 10 00 10 58 58 10 10 10 10 58 10 00 58 58 58 58 10 10 58 58 58 00 10 58 58 10 10 10 10 00 58 10 10 58 58 58 10 58 58 10 10 58 10 58 58 58 58 58 58 58 58 58 10 58 58 58 58 58 58 58 58 58 10 10 58 10 58 58 10 58 58 10 10 58 10 58 10 58 10 58 10 58 58 58 58 58 58 58 00 58 10 58 10 58 58 10 58 58 58 10 58 58 58 58 58 10 10 58 58 58 58 58 58 58 10 10 10 58 10 58 10 10 58 10 58 10 58 58 58 58 00 10 58 58 10 10 10 58 58 10 58 58 58 58 10 58 58 58 58 58 10 58 58 58 10 58 58 58 58 58 58 58 00 58 58 58 10 10 10 58 10 58 10 10 10 10 10 58 10 58 58 10 58 10 58 58 10 58 10 10 10 58 58 10 10 58 58 58 58 58 58 58 58 10 58 58 10 10 58 10 10 58 58 58 00 58 58 10 10 10 10 10 58 58 58 58 10 00 58 10 58 58 00 10 58 58 58 58 58 58 58 10 58 58 58 58 58 58 58 10 58 58 58 58 10 58 58 58 58 10 10 58 58 58 10 58 10 10 58 58 10 58 10 00 58 58 10 58 58 58 10 58 10 10 00 58 58 58 10 58 58 10 00 00 58 58 58 10 58 58 00 10 58 58 10 10 58 10 10 58 10 58 58 10 10 58 58 58 58 58 58 58 58 10 58 10 10 58 58 10 58 10 00 10 58 58 58 10 58 10 58 58 10 10 58 58 58 00 58 58 58 58 58 58 10 58 58 58 10 58 00 00 10 58 10 58 58 58 58 58 58 58 58 58 58 58 58 58 10 10 58 58 58 58 10 58 58 58 10 58 10 58 10 58 58 58 10 10 58 10 10 58 58 58 58 10 58 10 58 58 58 10 10 58 58 10 58 58 10 58 58 10 10 58 58 10 58 10 58 10 10 58 58 10 58 58 58 58 58 10 58 58 10 10 58 58 58 58 10 58 10 58 58 58 58 58 58 58 58 58 58 58 10 58 58 10 58 58 10 58 10 58 58 58 58 58 10 58 10 58 10 58 58 10 58 58 58 58 10 58 58 58 58 10 58 58 10 58 10 58 10 10 58 58 58 10 58 58 58 58 58 00 58 00 10 58 58 58 58 10 58 58 10 58 58 58 58 58 58 10 58 58 58 58 58 58 10 58 10 10 58 58 58 58 10 58 58 58 58 58 58 58 58 00 58 58 58 10 58 10 58 10 10 58 10 58 58 58 10 58 10 10 58 58 58 58 58 58 58 58 58 58 58 10 58 10 58 58 10 10 58 58 58 58 58 58 58 58 58 58 10 58 10 58 10 10 10 58 10 58 58 58 58 10 58 58 58 10 58 58 10 58 58
*/
