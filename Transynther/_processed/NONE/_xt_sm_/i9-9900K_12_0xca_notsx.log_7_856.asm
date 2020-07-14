.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x19434, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
add $4782, %r13
lea addresses_A_ht+0xd634, %r11
nop
nop
nop
nop
inc %rbp
mov (%r11), %r15
sub %r13, %r13
lea addresses_UC_ht+0x17c34, %rsi
lea addresses_UC_ht+0x15734, %rdi
nop
nop
nop
nop
nop
xor $27279, %r15
mov $26, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x17ef4, %rbp
nop
nop
dec %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x9cb4, %r15
nop
nop
nop
nop
nop
sub $53222, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
add $27386, %rbp
lea addresses_WT_ht+0x53dc, %rsi
xor $33021, %rcx
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
dec %rdi
lea addresses_UC_ht+0xeeb4, %r11
nop
nop
nop
nop
nop
inc %rbp
mov (%r11), %rsi
nop
cmp %r11, %r11
lea addresses_WT_ht+0x11034, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdi), %r15w
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x89e8, %rsi
nop
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)
nop
nop
nop
cmp $51663, %r15

// Load
lea addresses_normal+0x2784, %r15
nop
nop
nop
nop
and $28943, %rsi
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rbp
nop
cmp %rdx, %rdx

// Store
lea addresses_A+0x151f4, %rax
xor %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rax)
nop
nop
add $9155, %rsi

// Store
lea addresses_D+0x1af34, %rbp
nop
nop
and $59203, %rdx
movb $0x51, (%rbp)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0x194e1, %rsi
nop
nop
nop
and $24540, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_RW+0x15434, %rcx
nop
nop
nop
nop
nop
and $59524, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_D+0x1d2f4, %rbp
nop
nop
nop
dec %rax
movw $0x5152, (%rbp)
sub $15739, %rdx

// Store
lea addresses_normal+0x12834, %rbp
add $27406, %r15
movb $0x51, (%rbp)
nop
xor $38592, %r9

// Store
lea addresses_WC+0x13f1a, %rcx
xor %rbp, %rbp
movl $0x51525354, (%rcx)
and %r15, %r15

// Load
lea addresses_RW+0x6904, %rax
nop
nop
nop
nop
add $25442, %rdx
mov (%rax), %ecx
nop
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_RW+0x15434, %rax
clflush (%rax)
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rax), %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 10}}
{'58': 7}
58 58 58 58 58 58 58
*/
