.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1efb4, %rdx
nop
nop
sub $28339, %r13
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
add $3058, %rdx
lea addresses_D_ht+0x8204, %r15
inc %rax
mov (%r15), %r12
nop
nop
dec %rdx
lea addresses_WC_ht+0xccc7, %rsi
lea addresses_A_ht+0x10923, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $4, %rcx
rep movsq
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x13c3f, %rcx
nop
and $31270, %r12
mov (%rcx), %si
nop
nop
nop
and $33300, %rsi
lea addresses_D_ht+0x2dc7, %r12
nop
nop
nop
nop
xor $24917, %r15
movl $0x61626364, (%r12)
nop
nop
nop
nop
sub $50222, %rcx
lea addresses_normal_ht+0x1e7, %rsi
lea addresses_WT_ht+0x18104, %rdi
nop
nop
cmp %r13, %r13
mov $115, %rcx
rep movsl
nop
sub $41404, %rdx
lea addresses_WC_ht+0x16547, %rsi
lea addresses_UC_ht+0x12f17, %rdi
nop
nop
and %rdx, %rdx
mov $25, %rcx
rep movsl
lfence
lea addresses_WT_ht+0x6a47, %rax
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movb (%rax), %cl
nop
add %r12, %r12
lea addresses_WT_ht+0x15b47, %r12
nop
nop
nop
nop
dec %r15
movl $0x61626364, (%r12)
nop
and $48986, %rcx
lea addresses_WT_ht+0xfa27, %rsi
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm1, (%rsi)
nop
inc %rax
lea addresses_normal_ht+0x4647, %rsi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%rsi), %ecx
cmp %rdx, %rdx
lea addresses_WC_ht+0x28c7, %rsi
lea addresses_UC_ht+0x175c7, %rdi
nop
sub %r12, %r12
mov $93, %rcx
rep movsw
nop
nop
nop
cmp $8740, %rsi
lea addresses_A_ht+0x4547, %rcx
nop
nop
nop
nop
cmp $64500, %r12
mov $0x6162636465666768, %rax
movq %rax, (%rcx)
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x5cc7, %rsi
lea addresses_A_ht+0x17864, %rdi
nop
nop
nop
nop
add $23080, %r13
mov $127, %rcx
rep movsw
nop
sub $32090, %r13
lea addresses_normal_ht+0x4227, %rsi
lea addresses_normal_ht+0x18a27, %rdi
nop
nop
and %r15, %r15
mov $45, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_UC+0x8fb9, %rbx
nop
nop
nop
nop
add $53968, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rbx)
nop
nop
add %r9, %r9

// Load
lea addresses_normal+0x1207, %r13
nop
nop
nop
nop
nop
inc %rbp
mov (%r13), %r15w
nop
sub $37892, %rbx

// Faulty Load
lea addresses_D+0xf547, %rbx
nop
nop
add $35140, %rax
mov (%rbx), %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
