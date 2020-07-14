.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16bdd, %r11
clflush (%r11)
nop
nop
nop
nop
xor $45032, %r8
movb $0x61, (%r11)
nop
nop
add $65358, %r11
lea addresses_D_ht+0x95fa, %rsi
lea addresses_normal_ht+0x12832, %rdi
clflush (%rdi)
xor $33251, %r15
mov $69, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1d962, %rsi
lea addresses_normal_ht+0xc8c2, %rdi
nop
nop
xor $41725, %rdx
mov $127, %rcx
rep movsq
add %rdi, %rdi
lea addresses_A_ht+0xa4d6, %rsi
lea addresses_UC_ht+0xc35c, %rdi
nop
nop
cmp %r9, %r9
mov $49, %rcx
rep movsl
cmp $28635, %r11
lea addresses_A_ht+0x140a2, %rdi
nop
nop
nop
nop
xor $35231, %r11
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x7922, %rcx
nop
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
and $0xffffffffffffffc0, %rcx
movaps %xmm4, (%rcx)
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x1bc82, %rsi
nop
nop
lfence
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x8f62, %rdi
nop
nop
nop
cmp %rdx, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x9b02, %rbx
nop
add %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%rbx)
nop
nop
add %r9, %r9

// Store
lea addresses_WC+0x13682, %r11
cmp %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_WT+0x13e82, %rdx
sub $36953, %r9
movb $0x51, (%rdx)
cmp $29529, %r8

// Load
lea addresses_A+0x9d82, %r8
sub %rdx, %rdx
mov (%r8), %edi
nop
inc %r9

// Load
lea addresses_normal+0x10b6e, %rdx
nop
nop
nop
cmp $51724, %rdi
mov (%rdx), %ebp
dec %r8

// Store
lea addresses_PSE+0x157c2, %rdx
nop
nop
nop
nop
inc %r11
movw $0x5152, (%rdx)
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_normal+0x85a2, %r9
clflush (%r9)
add %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovntdq %ymm4, (%r9)
nop
nop
sub $26634, %r8

// Store
lea addresses_US+0x4e2, %rbx
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovntdq %ymm3, (%rbx)
add %rbp, %rbp

// Store
mov $0xcba, %rbx
nop
nop
cmp %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_RW+0xab82, %rbp
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
xor $15945, %r9

// Faulty Load
lea addresses_PSE+0x1ac82, %rdx
nop
cmp %rbx, %rbx
mov (%rdx), %r9d
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
