.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15e88, %r12
nop
nop
nop
dec %rbp
mov (%r12), %r9d
nop
nop
nop
nop
add $20020, %rsi
lea addresses_WT_ht+0xd7c0, %rcx
clflush (%rcx)
nop
nop
sub $38047, %rdx
movl $0x61626364, (%rcx)
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x1c4db, %rbp
xor %rsi, %rsi
movb (%rbp), %cl
nop
nop
nop
nop
sub $35548, %rbp
lea addresses_UC_ht+0xe8b8, %rsi
nop
nop
cmp $35003, %rcx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r9
nop
add $18485, %rbp
lea addresses_UC_ht+0x1fc8, %rsi
lea addresses_A_ht+0x1062, %rdi
nop
nop
nop
nop
add %r12, %r12
mov $3, %rcx
rep movsl
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0x1992, %rsi
lea addresses_A_ht+0x16720, %rdi
nop
nop
nop
inc %rbp
mov $16, %rcx
rep movsl
nop
sub $61830, %rdi
lea addresses_WT_ht+0x1de60, %rdi
nop
nop
nop
nop
add %rsi, %rsi
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x13a60, %r12
nop
nop
nop
nop
add $41561, %rbx
mov $0x6162636465666768, %r9
movq %r9, (%r12)
nop
nop
nop
nop
nop
add $48383, %r9
lea addresses_A_ht+0x3fe0, %rsi
lea addresses_normal_ht+0xc120, %rdi
clflush (%rdi)
nop
nop
nop
nop
lfence
mov $65, %rcx
rep movsq
nop
sub $15115, %r12
lea addresses_normal_ht+0xb520, %rsi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rsi)
nop
and %rdi, %rdi
lea addresses_WT_ht+0xdb20, %r9
clflush (%r9)
xor %rcx, %rcx
movb $0x61, (%r9)
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0xd900, %rdi
nop
sub $14806, %r9
mov (%rdi), %rcx
nop
nop
nop
xor $60237, %rsi
lea addresses_UC_ht+0x3d20, %r9
nop
nop
xor %rbx, %rbx
movb (%r9), %dl
xor $60668, %rbx
lea addresses_WC_ht+0x6990, %rsi
lea addresses_D_ht+0x16f30, %rdi
nop
cmp %r9, %r9
mov $21, %rcx
rep movsb
dec %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1459e, %rdi
nop
nop
nop
add $15905, %r15
movw $0x5152, (%rdi)
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0xb220, %r11
clflush (%r11)
add $49252, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%r11)
nop
nop
and %r11, %r11

// Store
mov $0xbe0, %r15
nop
nop
dec %rcx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub $32511, %r13

// Store
lea addresses_WC+0x1dd20, %r15
nop
nop
nop
cmp $43007, %rdi
movl $0x51525354, (%r15)
nop
nop
and $6337, %rdx

// Store
lea addresses_PSE+0x14cfc, %rdi
nop
nop
nop
nop
nop
xor $30801, %r8
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
xor $634, %rcx

// Store
mov $0x2d293f0000000bc0, %r13
clflush (%r13)
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
nop
nop
nop
nop
xor $62058, %r15

// Faulty Load
lea addresses_D+0x1cd20, %rcx
nop
add $33119, %r13
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
