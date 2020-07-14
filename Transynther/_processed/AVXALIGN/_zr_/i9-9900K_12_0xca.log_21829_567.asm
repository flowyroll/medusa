.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c571, %rsi
lea addresses_A_ht+0x10b3d, %rdi
nop
nop
sub $32906, %rbp
mov $54, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0xcb39, %r15
nop
nop
xor %r12, %r12
movw $0x6162, (%r15)
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x9471, %rsi
lea addresses_UC_ht+0x590d, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $54, %rcx
rep movsl
sub $23266, %rbp
lea addresses_D_ht+0x105f1, %rdi
nop
cmp $10164, %r12
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
sub $49040, %rsi
lea addresses_A_ht+0x19dd1, %rax
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, (%rax)
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x3161, %rbp
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbp)
nop
add $29972, %rbp
lea addresses_WC_ht+0x436d, %rsi
lea addresses_D_ht+0x7591, %rdi
nop
nop
and %r15, %r15
mov $81, %rcx
rep movsq
nop
add %rsi, %rsi
lea addresses_UC_ht+0x153d4, %rsi
lea addresses_WC_ht+0x10071, %rdi
clflush (%rdi)
nop
nop
nop
add %r15, %r15
mov $51, %rcx
rep movsq
nop
nop
cmp $31582, %rcx
lea addresses_WT_ht+0x3481, %r15
nop
nop
and %rbp, %rbp
mov (%r15), %r12w
nop
xor $57058, %r9
lea addresses_WT_ht+0xcb7d, %rbp
nop
and %rax, %rax
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r9
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0x161d0, %rsi
lea addresses_normal_ht+0x1ac71, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $33, %rcx
rep movsq
nop
nop
nop
nop
cmp $50006, %r9
lea addresses_normal_ht+0x1db71, %r15
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
nop
sub $14719, %rsi
lea addresses_WT_ht+0x17a71, %rsi
lea addresses_A_ht+0x5871, %rdi
nop
nop
nop
cmp %r9, %r9
mov $99, %rcx
rep movsw
nop
nop
sub $18332, %rax
lea addresses_UC_ht+0x5731, %rcx
nop
nop
nop
nop
nop
and $47810, %rdi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
dec %rsi
lea addresses_D_ht+0x5471, %rsi
lea addresses_normal_ht+0x9471, %rdi
nop
nop
nop
nop
nop
and $31644, %r15
mov $77, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $39055, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0x6e11, %r11
nop
dec %r8
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
cmp %rdi, %rdi

// Load
lea addresses_US+0x113a1, %rax
clflush (%rax)
nop
nop
add %rcx, %rcx
movb (%rax), %r8b
nop
nop
nop
nop
nop
xor $5637, %rax

// Store
mov $0xa1d, %r15
nop
add $11918, %rdx
movl $0x51525354, (%r15)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0x9071, %r15
nop
add $60767, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_UC+0x471, %rdi
nop
nop
cmp $33858, %r11
mov (%rdi), %r8d
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
