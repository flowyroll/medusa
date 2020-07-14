.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1580a, %rsi
lea addresses_D_ht+0x810a, %rdi
nop
nop
add %rdx, %rdx
mov $22, %rcx
rep movsq
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0xe60a, %rdx
nop
nop
nop
nop
xor $43194, %r12
movb (%rdx), %cl
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x12a0a, %rbp
nop
sub $54709, %rbx
movl $0x61626364, (%rbp)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x14a5a, %rbp
clflush (%rbp)
nop
nop
nop
lfence
movb (%rbp), %dl
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x1159a, %rdi
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
nop
add $30080, %rdx
lea addresses_WT_ht+0x1da0a, %r12
nop
nop
dec %rcx
mov (%r12), %rbx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1e252, %rsi
nop
and %r12, %r12
movw $0x6162, (%rsi)
nop
nop
nop
nop
add $54318, %rbp
lea addresses_WT_ht+0x8282, %rbx
nop
dec %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
nop
cmp $15130, %rsi
lea addresses_WC_ht+0x123c0, %rsi
add $40423, %r12
movb $0x61, (%rsi)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x20c2, %rbp
nop
nop
inc %rsi
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
nop
cmp $8998, %rdi
lea addresses_D_ht+0x5f7a, %rsi
lea addresses_WC_ht+0x1ccca, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $76, %rcx
rep movsl
nop
nop
xor $14632, %rcx
lea addresses_WT_ht+0xb60a, %r13
nop
nop
nop
sub $53023, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r13)
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1920a, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov (%rdi), %r12w
nop
nop
nop
add $64031, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x47a, %r14
sub %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
inc %rdi

// Store
lea addresses_WC+0xc20a, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rcx)
xor $37537, %rcx

// Store
lea addresses_WC+0xc20a, %r13
nop
dec %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
inc %rcx

// Faulty Load
lea addresses_WC+0xc20a, %r14
nop
and %r13, %r13
mov (%r14), %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 118, '51': 19, '00': 2, 'e0': 2}
58 58 51 58 58 58 00 58 58 58 58 58 58 58 58 e0 58 58 58 58 58 58 58 58 58 58 51 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 51 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 51 58 58 58 58 58 58 58 58 58 58 58 58 51 51 58 58 58 58 58 58 58 58 51 58 58 58 51 51 58 51 58 51 58 51 58 51 58 58 00 51 58 e0
*/
