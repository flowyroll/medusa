.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x260e, %rsi
lea addresses_normal_ht+0x1bde6, %rdi
sub $36554, %rbp
mov $123, %rcx
rep movsl
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xbbf6, %r15
nop
nop
xor $33172, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r15
vmovaps %ymm3, (%r15)
and %rax, %rax
lea addresses_D_ht+0x89f6, %rsi
lea addresses_normal_ht+0xf5f6, %rdi
cmp $63101, %r15
mov $9, %rcx
rep movsb
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x30f6, %rsi
lea addresses_A_ht+0x1ba5e, %rdi
add %r10, %r10
mov $79, %rcx
rep movsb
nop
nop
nop
nop
xor $17098, %rdi
lea addresses_normal_ht+0x3ff6, %rsi
lea addresses_WC_ht+0x143f6, %rdi
nop
nop
nop
nop
nop
xor $14122, %r13
mov $105, %rcx
rep movsw
add $63434, %rbp
lea addresses_A_ht+0x18ff6, %r13
clflush (%r13)
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
nop
add %r15, %r15
lea addresses_normal_ht+0x1d51a, %rsi
lea addresses_WT_ht+0x1296a, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $49682, %rax
mov $98, %rcx
rep movsw
sub $12359, %r15
lea addresses_WT_ht+0x84e8, %rsi
lea addresses_A_ht+0x1d95e, %rdi
sub $9769, %r13
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
add $31900, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x9b66, %rsi
lea addresses_normal+0x5ab6, %rdi
nop
nop
xor $34691, %rbp
mov $48, %rcx
rep movsb
nop
sub $56191, %r12

// Store
lea addresses_WT+0x19b76, %rdi
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
and $31205, %r11

// Store
lea addresses_UC+0x1ff6, %r11
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r11)
nop
nop
and %r9, %r9

// Load
mov $0x79b17000000007f6, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9
movb (%rsi), %r12b
nop
xor $64117, %rdi

// Faulty Load
mov $0x79b17000000007f6, %rdi
inc %r9
vmovntdqa (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'44': 17, '00': 1}
00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44
*/
