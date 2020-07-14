.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ad13, %r9
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x77, %rdx
nop
nop
inc %r12
movl $0x61626364, (%rdx)
nop
add %r12, %r12
lea addresses_D_ht+0x168f7, %rcx
nop
inc %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0xb977, %rbp
clflush (%rbp)
sub %r9, %r9
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
and %r11, %r11
lea addresses_D_ht+0x8877, %rbp
nop
nop
nop
add $40863, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
add $56166, %r9
lea addresses_D_ht+0x16077, %rsi
lea addresses_UC_ht+0x12477, %rdi
sub %rdx, %rdx
mov $90, %rcx
rep movsl
nop
nop
cmp $65083, %r10
lea addresses_WC_ht+0x157f7, %rbp
nop
nop
xor %r9, %r9
movb (%rbp), %dl
nop
nop
nop
sub $62134, %rcx
lea addresses_normal_ht+0xaff7, %rbp
nop
nop
nop
nop
sub $35475, %r11
movb (%rbp), %r9b
nop
nop
dec %rbp
lea addresses_D_ht+0x130ff, %rcx
cmp %r9, %r9
movb (%rcx), %r10b
sub %rdi, %rdi
lea addresses_normal_ht+0xa577, %rdx
nop
add $60430, %rsi
movw $0x6162, (%rdx)
add %rcx, %rcx
lea addresses_WC_ht+0x1777, %rdi
xor $19288, %rdx
mov (%rdi), %r12w
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1d1fd, %r12
and %r11, %r11
movl $0x61626364, (%r12)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0xb350, %rsi
lea addresses_D_ht+0x1cc77, %rdi
nop
nop
nop
nop
nop
sub $14531, %r10
mov $30, %rcx
rep movsw
nop
nop
nop
add $9793, %r12
lea addresses_normal_ht+0x16877, %r12
nop
nop
nop
xor %rcx, %rcx
movb (%r12), %r10b
and $52157, %rdi
lea addresses_WC_ht+0x16e97, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
movb (%rcx), %r11b
nop
nop
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1c969, %r8
nop
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%r8)
nop
sub $59360, %rdx

// Store
lea addresses_WT+0xd877, %r8
nop
nop
xor %rsi, %rsi
movb $0x51, (%r8)
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x72b7, %r15
nop
sub $6563, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r15)
and $56899, %r12

// Store
lea addresses_PSE+0x1e077, %r12
nop
inc %rdx
movl $0x51525354, (%r12)
nop
nop
and $44840, %r12

// REPMOV
lea addresses_PSE+0x1e077, %rsi
lea addresses_WC+0x921f, %rdi
nop
nop
nop
nop
mfence
mov $88, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $6745, %rdi

// Store
lea addresses_A+0x1fff3, %rdx
nop
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%rdx)
nop
nop
nop
nop
xor $41775, %rdx

// Store
lea addresses_A+0x19e37, %rbp
nop
cmp $46849, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovntdq %ymm3, (%rbp)
nop
nop
add $52948, %rdi

// Store
lea addresses_PSE+0x1e077, %rdx
nop
nop
add $48428, %r8
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_PSE+0x1e077, %r15
nop
nop
nop
and %r9, %r9
mov (%r15), %di
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'54': 18535}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
