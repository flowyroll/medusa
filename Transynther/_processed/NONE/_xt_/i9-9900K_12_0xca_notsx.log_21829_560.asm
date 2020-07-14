.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1bb4a, %rdx
and $9566, %r10
movw $0x6162, (%rdx)
and %r8, %r8
lea addresses_UC_ht+0x1b01a, %rsi
nop
and %rdx, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x14b4a, %rdx
nop
nop
and %rsi, %rsi
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x1c44e, %r12
nop
nop
nop
nop
xor $64593, %r14
mov (%r12), %si
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x5f4a, %rsi
lea addresses_D_ht+0x15a42, %rdi
xor %rax, %rax
mov $106, %rcx
rep movsb
nop
nop
and $60726, %r12
lea addresses_D_ht+0x197c0, %r14
dec %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
nop
nop
nop
cmp $45848, %r10
lea addresses_UC_ht+0x1984a, %rsi
lea addresses_D_ht+0x1d8cb, %rdi
nop
nop
nop
nop
inc %r14
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $894, %r14
lea addresses_A_ht+0xaaba, %rcx
nop
nop
nop
nop
add $52989, %r8
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x3b4a, %rsi
lea addresses_UC_ht+0x762a, %rdi
nop
nop
nop
nop
inc %r10
mov $30, %rcx
rep movsb
nop
sub $33721, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_UC+0x250a, %r11
nop
nop
nop
nop
nop
inc %r15
movw $0x5152, (%r11)
nop
nop
nop
xor $53436, %r11

// Store
lea addresses_D+0x14b4a, %rbp
nop
nop
nop
nop
add $28705, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rbp)
nop
add $26850, %rcx

// Store
lea addresses_WC+0x8b4a, %r11
nop
and $45903, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
lfence

// Store
lea addresses_A+0x61aa, %rbp
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_UC+0x1097, %rax
nop
nop
nop
nop
cmp $14121, %rbx
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r15
nop
nop
nop
nop
sub $35064, %rbx

// Store
lea addresses_UC+0x1e3fa, %rdi
nop
nop
nop
nop
add $55851, %rcx
movb $0x51, (%rdi)
nop
nop
xor $62427, %rcx

// Store
mov $0x4a, %rcx
and %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0xb799, %r15
cmp %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r15
movntdq %xmm0, (%r15)
add %r11, %r11

// Store
mov $0xfca, %r15
nop
nop
inc %rbx
movl $0x51525354, (%r15)
nop
nop
add $14555, %rdi

// Store
lea addresses_RW+0x339a, %rax
and %rbx, %rbx
movl $0x51525354, (%rax)
sub $26002, %r11

// Store
lea addresses_WC+0x167aa, %r15
nop
nop
xor $9922, %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r15)
nop
nop
add %rdi, %rdi

// Store
lea addresses_WC+0x4ca, %rcx
and %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
cmp $43212, %rdi

// Store
lea addresses_D+0x1444a, %r15
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%r15)
nop
nop
nop
add $51817, %rbp

// Store
lea addresses_WC+0xd4a, %r11
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
inc %rbp

// Faulty Load
lea addresses_WT+0x17b4a, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add $40040, %rcx
mov (%rbp), %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
