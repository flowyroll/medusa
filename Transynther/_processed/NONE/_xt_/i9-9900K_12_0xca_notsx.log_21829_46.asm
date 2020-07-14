.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc8fb, %rsi
lea addresses_WC_ht+0x157db, %rdi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $91, %rcx
rep movsw
nop
cmp %r13, %r13
lea addresses_D_ht+0x1badb, %r12
nop
add %r15, %r15
mov (%r12), %esi
inc %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xd8b, %rbp
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_A+0xd15b, %rbp
nop
nop
nop
sub %rdx, %rdx
mov (%rbp), %r14
nop
nop
nop
dec %r15

// Store
lea addresses_UC+0x16e5b, %rbp
nop
nop
nop
nop
xor $30349, %r9
movl $0x51525354, (%rbp)
nop
nop
nop
add $42118, %r13

// REPMOV
lea addresses_PSE+0x10e5b, %rsi
lea addresses_WT+0x12465, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $21811, %r11
mov $103, %rcx
rep movsb
and $44767, %r15

// REPMOV
lea addresses_normal+0x440, %rsi
lea addresses_PSE+0x1cf77, %rdi
nop
add $1796, %r15
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $7188, %rcx

// REPMOV
lea addresses_WT+0xce5b, %rsi
lea addresses_WT+0x19e5b, %rdi
clflush (%rdi)
nop
sub %rdx, %rdx
mov $11, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_D+0x15c5b, %r9
nop
nop
sub $18295, %rsi
mov (%r9), %r11d
nop
nop
nop
nop
cmp $34821, %r9

// Store
lea addresses_WC+0x1bcfb, %rbp
nop
nop
dec %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_normal+0x505b, %r9
inc %rcx
movw $0x5152, (%r9)
nop
and $28943, %rdi

// Load
lea addresses_normal+0x3737, %r9
nop
nop
and %r15, %r15
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
dec %rsi

// REPMOV
lea addresses_D+0x191bb, %rsi
lea addresses_PSE+0x5d5b, %rdi
nop
nop
add $40488, %rbp
mov $97, %rcx
rep movsw
nop
nop
nop
nop
xor %r11, %r11

// Load
lea addresses_UC+0x3e6b, %rdi
nop
nop
nop
cmp %r9, %r9
mov (%rdi), %r11d
nop
xor %r15, %r15

// REPMOV
lea addresses_RW+0x4773, %rsi
lea addresses_UC+0x14ffb, %rdi
nop
dec %rbp
mov $8, %rcx
rep movsb
dec %rdi

// Faulty Load
lea addresses_PSE+0x10e5b, %r9
dec %r11
mov (%r9), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_PSE'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_PSE'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
