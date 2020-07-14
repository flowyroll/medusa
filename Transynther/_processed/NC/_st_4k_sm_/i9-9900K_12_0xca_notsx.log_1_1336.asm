.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x71d6, %r11
nop
nop
inc %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1665e, %rax
clflush (%rax)
nop
nop
xor $7495, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rax)
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xd696, %rcx
nop
nop
cmp $40526, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
and $4652, %r11
lea addresses_UC_ht+0x3096, %r11
nop
and $11149, %rdx
movl $0x61626364, (%r11)
nop
nop
nop
nop
add $1690, %r11
lea addresses_UC_ht+0x19bd6, %rbx
nop
nop
cmp $45452, %r10
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
and $19912, %r11
lea addresses_A_ht+0x10896, %rcx
cmp %r10, %r10
mov (%rcx), %rbx
nop
nop
nop
cmp $47917, %rbx
lea addresses_WT_ht+0x2116, %rcx
nop
nop
nop
cmp %r11, %r11
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
cmp $8747, %rdx
lea addresses_UC_ht+0x16186, %r8
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%r8)
nop
nop
xor $14751, %rax
lea addresses_UC_ht+0x125fe, %rsi
lea addresses_D_ht+0x13e60, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $29, %rcx
rep movsq
nop
nop
nop
nop
xor $17669, %rcx
lea addresses_D_ht+0x14096, %rdx
nop
nop
nop
cmp %r8, %r8
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rax
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x12096, %rcx
nop
nop
nop
dec %r12
movb $0x51, (%rcx)
cmp $57614, %r12

// Store
lea addresses_normal+0x1e2d6, %r11
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovaps %ymm0, (%r11)
nop
nop
nop
cmp $22283, %rax

// Store
lea addresses_WT+0x48f6, %r11
nop
cmp %r10, %r10
movl $0x51525354, (%r11)
nop
nop
xor $3988, %r12

// Store
mov $0x200b0d0000000096, %rdi
nop
nop
nop
nop
and %rsi, %rsi
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and $34270, %rdi

// Store
lea addresses_WC+0x6ab6, %rsi
nop
nop
sub %rax, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_UC+0x2ef6, %rax
clflush (%rax)
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%rax)
nop
nop
cmp %rax, %rax

// Store
lea addresses_UC+0x4506, %rsi
nop
nop
nop
nop
add $9443, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rsi)
nop
nop
add %r12, %r12

// Store
lea addresses_normal+0x1fb16, %r10
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_PSE+0x1419e, %r12
nop
nop
nop
sub $43002, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovntdq %ymm4, (%r12)
nop
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
mov $0x200b0d0000000096, %rax
and %rsi, %rsi
mov (%rax), %cx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'52': 1}
52
*/
