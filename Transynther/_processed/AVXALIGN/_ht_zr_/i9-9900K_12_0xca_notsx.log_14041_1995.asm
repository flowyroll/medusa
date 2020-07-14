.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xdb6a, %r9
cmp $3859, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %r9
vmovntdq %ymm2, (%r9)
nop
nop
nop
nop
nop
xor $60683, %rbx
lea addresses_UC_ht+0x9128, %rsi
lea addresses_WT_ht+0x1cb6a, %rdi
nop
nop
nop
nop
nop
and %rax, %rax
mov $33, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_WC_ht+0x14f3a, %r9
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
sub $49189, %rbx
lea addresses_A_ht+0x1396a, %rsi
lea addresses_UC_ht+0xf488, %rdi
dec %r15
mov $26, %rcx
rep movsl
add %rcx, %rcx
lea addresses_normal_ht+0xf5ea, %rsi
lea addresses_UC_ht+0xc36a, %rdi
clflush (%rdi)
and $17833, %rbx
mov $107, %rcx
rep movsb
inc %rax
lea addresses_A_ht+0x56a, %rsi
lea addresses_UC_ht+0x1086a, %rdi
clflush (%rdi)
and %r15, %r15
mov $58, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x3d7a, %rsi
lea addresses_A_ht+0x9308, %rdi
nop
nop
nop
nop
nop
add $24270, %rax
mov $21, %rcx
rep movsl
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xc6aa, %r11
nop
nop
nop
nop
sub $51295, %rcx
mov (%r11), %r9w
nop
nop
nop
nop
nop
cmp $30846, %rdi
lea addresses_A_ht+0x1df6a, %rax
nop
nop
nop
cmp $51171, %rcx
mov (%rax), %r15d
nop
nop
inc %rdi
lea addresses_D_ht+0x1c3aa, %r11
nop
sub $34181, %rax
movl $0x61626364, (%r11)
nop
add $10244, %r15
lea addresses_WT_ht+0x170e4, %rbx
nop
nop
nop
nop
cmp $9133, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rbx
vmovaps %ymm1, (%rbx)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x322a, %r15
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
xor $624, %r15
lea addresses_D_ht+0x1e5ea, %rax
nop
dec %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
nop
sub $19834, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x12415, %rbx
clflush (%rbx)
nop
xor $48688, %rdx
movl $0x51525354, (%rbx)
nop
nop
nop
and $31464, %rdi

// Store
lea addresses_normal+0x1b36a, %rdi
nop
and $36439, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
cmp $45502, %r12

// Store
lea addresses_WC+0xd0f2, %r8
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
cmp $50355, %rdx

// Faulty Load
lea addresses_normal+0x1b36a, %rbp
nop
nop
cmp $29451, %r12
vmovntdqa (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'00': 3409, '45': 10632}
00 45 45 45 45 00 45 00 45 45 00 45 45 45 45 00 45 45 00 45 45 00 45 45 45 45 00 00 00 45 45 00 45 00 45 00 45 45 45 00 45 00 00 45 00 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 00 00 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 00 00 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 00 00 00 00 00 00 45 00 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 00 00 45 45 00 45 45 00 45 45 45 00 45 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 45 45 00 45 00 45 00 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 45 45 45 00 45 45 45 00 45 00 45 00 00 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 00 45 00 00 45 00 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 00 45 00 45 45 45 00 00 45 00 00 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 00 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 45 45 45 00 45 45 45 45 00 00 45 45 00 00 45 45 00 45 45 00 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 00 00 45 45 45 00 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 45 45 00 00 45 00 45 45 00 00 45 00 45 45 00 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 00 00 00 00 45 45 45 00 45 00 45 00 45 45 00 45 00 00 45 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 00 45 45 45 00 45 00 00 45 00 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00
*/
