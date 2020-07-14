.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10602, %rsi
lea addresses_A_ht+0x7d82, %rdi
clflush (%rsi)
clflush (%rdi)
sub %r14, %r14
mov $0, %rcx
rep movsq
nop
nop
dec %rbx
lea addresses_WC_ht+0x18202, %rsi
lea addresses_WC_ht+0xf302, %rdi
nop
nop
nop
nop
nop
and $64084, %r8
mov $47, %rcx
rep movsq
nop
xor $42902, %rbx
lea addresses_WT_ht+0x4802, %rsi
lea addresses_D_ht+0x6e02, %rdi
inc %r10
mov $16, %rcx
rep movsq
nop
nop
sub $52679, %rsi
lea addresses_WC_ht+0x17602, %r8
nop
nop
nop
nop
nop
lfence
movb $0x61, (%r8)
cmp $62108, %rdi
lea addresses_normal_ht+0x22b2, %rsi
lea addresses_normal_ht+0xcd14, %rdi
nop
add $55461, %r9
mov $82, %rcx
rep movsb
cmp $16800, %r10
lea addresses_A_ht+0x1bc62, %rsi
lea addresses_normal_ht+0x14df2, %rdi
clflush (%rsi)
nop
nop
cmp %r8, %r8
mov $12, %rcx
rep movsw
nop
nop
nop
add $48391, %rbx
lea addresses_UC_ht+0x9e02, %rbx
nop
nop
cmp $24347, %r14
movups (%rbx), %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_WC_ht+0x21c4, %rsi
lea addresses_WT_ht+0x99c2, %rdi
nop
nop
and %r10, %r10
mov $55, %rcx
rep movsq
nop
nop
nop
cmp $23430, %r10
lea addresses_WC_ht+0x9bce, %rsi
lea addresses_WT_ht+0x18402, %rdi
sub %r9, %r9
mov $25, %rcx
rep movsb
nop
nop
nop
cmp $12232, %rdi
lea addresses_D_ht+0x1ecc2, %rbx
nop
xor $19754, %r8
mov (%rbx), %r10
nop
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x180f2, %rsi
lea addresses_WC_ht+0x1002, %rdi
clflush (%rdi)
nop
nop
and %r14, %r14
mov $6, %rcx
rep movsq
nop
nop
nop
nop
nop
add $51293, %r10
lea addresses_UC_ht+0x248c, %r9
nop
nop
sub $46347, %rdi
mov (%r9), %r8d
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x87e2, %rsi
lea addresses_D_ht+0x8402, %rdi
nop
nop
xor $63591, %r9
mov $82, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $15269, %rsi
lea addresses_WC_ht+0x76a2, %r10
nop
nop
nop
nop
sub $46881, %rbx
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
nop
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x19e02, %rsi
lea addresses_PSE+0x602, %rdi
nop
nop
sub %r9, %r9
mov $106, %rcx
rep movsw
nop
nop
nop
add $25981, %r9

// Store
lea addresses_normal+0xd9c8, %rdi
nop
nop
nop
sub $54025, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_A+0x12602, %r13
sub %rbx, %rbx
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8}}
{'5f': 4, '00': 10}
00 00 00 00 5f 00 5f 00 00 5f 00 00 5f 00
*/
