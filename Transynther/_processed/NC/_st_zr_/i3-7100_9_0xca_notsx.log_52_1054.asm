.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e049, %r8
nop
nop
sub %rdx, %rdx
mov (%r8), %r12w
nop
inc %r12
lea addresses_D_ht+0xd5f9, %r15
nop
nop
nop
add $29659, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
and $0xffffffffffffffc0, %r15
movntdq %xmm1, (%r15)
nop
xor $1268, %rbp
lea addresses_normal_ht+0xdfb9, %rdx
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
nop
and $13165, %r15
lea addresses_UC_ht+0x530d, %rdi
nop
nop
cmp $1081, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
nop
sub $40817, %rbp
lea addresses_WT_ht+0xcdf9, %rsi
lea addresses_WT_ht+0x12879, %rdi
clflush (%rsi)
inc %r8
mov $5, %rcx
rep movsl
cmp %r11, %r11
lea addresses_WC_ht+0xb901, %r8
add %rcx, %rcx
mov (%r8), %r15w
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x15951, %rdx
nop
nop
nop
nop
nop
sub %r12, %r12
mov (%rdx), %r11
nop
nop
nop
nop
nop
and $52768, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rsi

// Store
mov $0xc79, %r12
nop
nop
nop
and $4076, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movntdq %xmm6, (%r12)
nop
nop
nop
inc %r14

// Store
lea addresses_D+0x4019, %r9
nop
and $32186, %r8
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp $23847, %r14

// Load
lea addresses_normal+0x18a79, %r12
nop
dec %r8
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r15
inc %r8

// Store
lea addresses_WT+0x163f9, %r12
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r12)

// Exception!!!
nop
mov (0), %r8
nop
nop
nop
xor $17736, %r8

// Store
lea addresses_UC+0x7679, %r12
nop
nop
nop
nop
nop
xor $33957, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
sub $38093, %r14

// Faulty Load
mov $0x55796c0000000a79, %r12
nop
nop
nop
dec %r8
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'34': 1, '00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
