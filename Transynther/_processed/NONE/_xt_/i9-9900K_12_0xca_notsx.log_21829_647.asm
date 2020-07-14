.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1cf4d, %rbx
nop
nop
nop
xor $48491, %rdx
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
sub $4275, %rax
lea addresses_WT_ht+0x795d, %rsi
lea addresses_UC_ht+0x8a4d, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $112, %rcx
rep movsl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x122ed, %rdx
clflush (%rdx)
xor %rdi, %rdi
movl $0x61626364, (%rdx)
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x19627, %rsi
lea addresses_D_ht+0x1a54d, %rdi
nop
nop
nop
nop
nop
cmp $31851, %rbp
mov $8, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $30957, %rcx
lea addresses_D_ht+0xbd4d, %rsi
nop
nop
nop
nop
nop
add $25919, %rbp
movb (%rsi), %bl
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x10c4d, %rsi
lea addresses_normal_ht+0x1e14d, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $107, %rcx
rep movsw
nop
nop
nop
nop
add $53721, %rax
lea addresses_normal_ht+0x1e14d, %r11
nop
nop
nop
nop
dec %rsi
movb $0x61, (%r11)
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xd54d, %rax
clflush (%rax)
cmp %rdi, %rdi
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
cmp %r11, %r11
lea addresses_WT_ht+0x8e29, %rbx
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
nop
nop
mfence
lea addresses_normal_ht+0x1c45, %rsi
lea addresses_WT_ht+0x1615d, %rdi
nop
nop
nop
sub $9897, %r11
mov $104, %rcx
rep movsw
nop
nop
nop
cmp $56645, %r11
lea addresses_UC_ht+0xa4d, %rdi
nop
nop
nop
nop
add $51357, %rdx
mov (%rdi), %cx
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x1ec8d, %rsi
nop
nop
nop
inc %rbp
movl $0x61626364, (%rsi)
nop
nop
xor $55980, %rbx
lea addresses_D_ht+0x234d, %rbp
nop
nop
nop
nop
and $54297, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
add %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x18c51, %rcx
nop
nop
nop
nop
inc %r8
movb $0x51, (%rcx)
nop
nop
nop
cmp %r8, %r8

// REPMOV
lea addresses_RW+0x4d4d, %rsi
lea addresses_normal+0x1ad4c, %rdi
nop
nop
nop
cmp %r12, %r12
mov $123, %rcx
rep movsw
nop
nop
nop
sub $57227, %r12

// Store
lea addresses_UC+0x1b7d5, %r12
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
nop
nop
inc %r12

// Store
lea addresses_A+0x5a1d, %r10
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r10)
nop
nop
add $45687, %rcx

// Store
lea addresses_UC+0x10af9, %r8
nop
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r8)
nop
nop
nop
nop
add $54652, %r12

// Store
lea addresses_normal+0x1044d, %rdi
inc %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0x16d4d, %rdx
dec %r8
movl $0x51525354, (%rdx)
nop
nop
nop
nop
sub $63740, %rcx

// Faulty Load
lea addresses_WC+0x1054d, %rcx
nop
nop
and %rdi, %rdi
mov (%rcx), %r8w
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
