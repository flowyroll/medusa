.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc173, %rsi
lea addresses_A_ht+0xf903, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $15, %rcx
rep movsq
inc %r12
lea addresses_WC_ht+0x170e3, %r13
nop
nop
nop
nop
cmp $55712, %r14
movups (%r13), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xc063, %rcx
nop
nop
nop
nop
nop
sub %rbp, %rbp
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x132f3, %rsi
nop
nop
nop
nop
nop
add $5306, %rbp
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xf3e3, %rsi
lea addresses_WC_ht+0x9305, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r15, %r15
mov $36, %rcx
rep movsl
add %r12, %r12
lea addresses_UC_ht+0x95e3, %r14
sub $43191, %rbp
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x156e3, %rsi
lea addresses_WT_ht+0xa573, %rdi
nop
nop
nop
nop
inc %r14
mov $104, %rcx
rep movsq
nop
add $11805, %r13
lea addresses_WT_ht+0x12c31, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $16122, %rdi
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %r15
nop
xor %r15, %r15
lea addresses_normal_ht+0x4b63, %r13
add %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
cmp $32985, %r12
lea addresses_WC_ht+0x68e3, %r12
clflush (%r12)
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x8aa3, %rsi
lea addresses_A_ht+0x40e3, %rdi
nop
nop
nop
nop
xor $48957, %r15
mov $23, %rcx
rep movsq
sub %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x1ddb, %rsi
lea addresses_A+0x14ee3, %rdi
nop
nop
nop
nop
and $35690, %rbx
mov $14, %rcx
rep movsb
nop
nop
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_UC+0x1f077, %rsi
lea addresses_WT+0x1f77d, %rdi
clflush (%rdi)
xor %rbp, %rbp
mov $57, %rcx
rep movsq
nop
nop
nop
dec %rbx

// Store
lea addresses_normal+0xa429, %rsi
nop
nop
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
xor $61043, %r13

// Store
lea addresses_UC+0x3eab, %rcx
and %r9, %r9
movb $0x51, (%rcx)
nop
nop
sub %r9, %r9

// REPMOV
lea addresses_UC+0x15d63, %rsi
lea addresses_WT+0xe9a3, %rdi
nop
and %r13, %r13
mov $48, %rcx
rep movsw
nop
nop
cmp $30217, %rsi

// Faulty Load
lea addresses_WC+0x28e3, %rbx
nop
nop
sub %rbp, %rbp
movaps (%rbx), %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
