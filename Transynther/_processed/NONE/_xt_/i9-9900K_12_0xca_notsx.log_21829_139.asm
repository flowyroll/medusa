.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x7a12, %rsi
and $786, %rbp
movb (%rsi), %bl
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x13b62, %r12
nop
and %rbx, %rbx
mov (%r12), %r14w
nop
add $15075, %r14
lea addresses_A_ht+0xe892, %rdi
nop
nop
xor %rdx, %rdx
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
sub %rdx, %rdx
lea addresses_D_ht+0x14992, %r14
nop
sub %rdi, %rdi
movb $0x61, (%r14)
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0xa412, %r14
nop
nop
nop
nop
inc %rsi
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rbx
nop
nop
nop
and $23916, %rsi
lea addresses_WC_ht+0x1623a, %r14
nop
nop
nop
nop
nop
sub %r12, %r12
movb $0x61, (%r14)
nop
sub %rsi, %rsi
lea addresses_D_ht+0x14192, %rdi
xor %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm4, (%rdi)
sub %rsi, %rsi
lea addresses_UC_ht+0x16804, %rsi
lea addresses_A_ht+0x13b92, %rdi
cmp $60288, %rbp
mov $74, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x7f92, %rsi
lea addresses_normal_ht+0x8792, %rdi
nop
and $39619, %r12
mov $34, %rcx
rep movsl
nop
nop
sub $5925, %rdx
lea addresses_WT_ht+0xaa18, %r12
nop
nop
nop
nop
and %r14, %r14
movb (%r12), %dl
nop
nop
nop
lfence
lea addresses_normal_ht+0x18db2, %rsi
lea addresses_WC_ht+0x11be, %rdi
clflush (%rdi)
nop
nop
nop
sub $59014, %r12
mov $105, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x12452, %rbp
nop
nop
nop
dec %rcx
mov (%rbp), %edx
xor %rcx, %rcx
lea addresses_A_ht+0x12592, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
cmp $57020, %rdi
lea addresses_A_ht+0x1ea92, %rsi
lea addresses_UC_ht+0x2146, %rdi
clflush (%rdi)
nop
nop
nop
add %rbp, %rbp
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $42092, %r12
lea addresses_UC_ht+0xdcd0, %rsi
lea addresses_WC_ht+0x186ee, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $106, %rcx
rep movsl
nop
nop
inc %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rdi

// Faulty Load
lea addresses_WT+0x15992, %rbp
and %r10, %r10
mov (%rbp), %r14w
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rdi
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
