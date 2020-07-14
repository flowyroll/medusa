.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4b46, %rsi
lea addresses_normal_ht+0x1d369, %rdi
nop
nop
nop
nop
xor $1617, %r9
mov $31, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1cb69, %r10
nop
nop
nop
nop
add %rdx, %rdx
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
sub $24615, %rax
lea addresses_D_ht+0xb116, %rsi
nop
cmp $27080, %r9
mov (%rsi), %rdi
nop
sub $30899, %r9
lea addresses_normal_ht+0x8516, %rsi
lea addresses_WC_ht+0xaa76, %rdi
nop
nop
nop
add %r13, %r13
mov $67, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x17a56, %rdi
nop
nop
nop
nop
nop
xor $28971, %rax
movb (%rdi), %r9b
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x15116, %rsi
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x3916, %rsi
nop
nop
nop
add $9063, %rax
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x232a, %rcx
nop
nop
nop
and %r9, %r9
mov (%rcx), %di
inc %r9
lea addresses_WC_ht+0x44d6, %r10
nop
nop
nop
nop
and $44095, %rdi
mov (%r10), %esi
nop
and $43787, %r10
lea addresses_WC_ht+0x3182, %rdi
nop
nop
sub $40416, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0xb796, %rcx
xor $40004, %rdi
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
nop
cmp $29040, %r11

// Store
mov $0x5efaab0000000002, %rcx
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rcx)
nop
xor $32136, %r11

// Store
lea addresses_RW+0x17cb6, %rcx
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
dec %r14

// Faulty Load
lea addresses_WT+0x1e516, %rdi
dec %r11
movntdqa (%rdi), %xmm2
vpextrq $0, %xmm2, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
