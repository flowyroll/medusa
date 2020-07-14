.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xd075, %rbp
nop
nop
nop
nop
nop
sub $51471, %rcx
mov (%rbp), %edi
nop
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0xc3e3, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
cmp $22723, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbp)
xor $64028, %rcx
lea addresses_WT_ht+0x715, %r12
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
and $36474, %rcx
lea addresses_WT_ht+0x1dd15, %rsi
lea addresses_D_ht+0x26f5, %rdi
clflush (%rdi)
and $48569, %rdx
mov $21, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xff75, %rsi
lea addresses_D_ht+0x943d, %rdi
nop
nop
nop
inc %r13
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
and $10148, %rdi
lea addresses_A_ht+0x1bb15, %rdx
nop
nop
dec %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rdx
movaps %xmm6, (%rdx)
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0xe495, %rcx
nop
nop
add $61817, %r11
mov (%rcx), %r13
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x10caf, %rsi
nop
add $17056, %r13
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1ee15, %r13
nop
cmp $32870, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x9c9d, %rdi
nop
nop
sub $24817, %r12
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rbp
nop
inc %rdi
lea addresses_normal_ht+0x123db, %rdi
nop
dec %r12
movl $0x61626364, (%rdi)
nop
nop
inc %r13
lea addresses_normal_ht+0x1cc89, %rsi
lea addresses_UC_ht+0x16d15, %rdi
clflush (%rsi)
nop
nop
nop
sub %rbp, %rbp
mov $47, %rcx
rep movsq
nop
nop
nop
nop
sub $54083, %rcx
lea addresses_normal_ht+0xe278, %rsi
lea addresses_WC_ht+0xecd5, %rdi
and $29819, %r13
mov $97, %rcx
rep movsq
nop
nop
xor $63486, %r13
lea addresses_WT_ht+0x3bf5, %rsi
lea addresses_WT_ht+0x1ed15, %rdi
add %r11, %r11
mov $24, %rcx
rep movsb
xor $8183, %r11
lea addresses_WC_ht+0x1e85a, %rcx
nop
nop
nop
nop
add $64375, %rdx
mov (%rcx), %r11w
nop
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x29f5, %r14
nop
nop
nop
cmp $12567, %r10
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
inc %r14

// Load
lea addresses_A+0x10715, %r12
nop
nop
nop
inc %rbx
mov (%r12), %r14
xor $52044, %r14

// Load
lea addresses_RW+0x15915, %r12
nop
xor $48955, %r11
vmovups (%r12), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
sub $65526, %r12

// Store
lea addresses_WC+0x1dd35, %rsi
nop
nop
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rsi)
add %r14, %r14

// Store
lea addresses_PSE+0x15515, %r13
nop
cmp %r12, %r12
movl $0x51525354, (%r13)
nop
nop
nop
dec %r14

// Load
lea addresses_WC+0x12c95, %rbx
nop
sub %r12, %r12
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r14
nop
inc %r10

// Store
lea addresses_A+0x3d15, %rbx
and %r14, %r14
movl $0x51525354, (%rbx)
and $54927, %rsi

// REPMOV
lea addresses_UC+0x155, %rsi
lea addresses_UC+0x1dd5, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $47, %rcx
rep movsl
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_PSE+0x15515, %rcx
sub %r14, %r14
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
