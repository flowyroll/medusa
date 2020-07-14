.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r9
push %rdi
lea addresses_WC_ht+0x1e31d, %rdi
nop
nop
nop
add $54954, %r9
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
cmp $36469, %r15
lea addresses_WC_ht+0x11eeb, %r11
nop
nop
nop
nop
lfence
movb (%r11), %r13b
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x1773b, %r12
clflush (%r12)
nop
nop
nop
xor %r14, %r14
movb (%r12), %r13b
nop
nop
nop
sub $49510, %r14
lea addresses_normal_ht+0x14a3b, %r9
nop
nop
and $4537, %r11
movl $0x61626364, (%r9)
nop
nop
sub $62081, %r12
lea addresses_normal_ht+0x1953b, %r11
nop
nop
nop
and $19196, %r13
movups (%r11), %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
nop
xor %r11, %r11
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_UC+0xe09b, %rdi
nop
nop
nop
nop
nop
cmp $20142, %rbp
movb $0x51, (%rdi)
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_D+0x1b061, %rdi
clflush (%rdi)
sub %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
sub $7030, %rax

// Store
lea addresses_UC+0x13f0b, %r14
clflush (%r14)
nop
nop
nop
add %r11, %r11
movb $0x51, (%r14)
and $34024, %r8

// Faulty Load
lea addresses_US+0x15f3b, %r14
and $12538, %rcx
movaps (%r14), %xmm7
vpextrq $1, %xmm7, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'44': 6101, '00': 14284, '48': 1444}
44 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 48 48 00 00 00 44 00 44 00 00 00 00 00 00 44 44 00 00 44 00 00 00 44 44 00 00 00 44 00 44 00 00 00 00 44 00 00 00 48 00 00 44 00 00 00 00 00 00 48 44 00 00 00 00 00 00 00 00 00 00 00 44 48 44 44 44 00 00 48 44 00 00 00 44 48 00 00 48 44 00 00 00 00 44 00 00 48 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 44 44 00 00 44 00 00 00 00 00 48 44 44 44 44 44 00 44 00 44 44 00 00 00 00 00 00 44 00 00 00 48 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 44 44 00 48 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 44 00 44 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 44 44 00 44 00 00 48 44 00 00 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 44 44 00 00 00 00 00 44 00 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 44 44 00 00 44 44 00 00 00 00 00 48 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 44 00 00 44 00 48 44 48 44 44 44 00 00 44 00 00 00 00 44 00 44 00 44 00 48 44 00 00 00 44 44 00 00 00 44 00 00 44 00 44 44 00 44 44 44 00 44 00 00 00 00 00 00 00 44 48 44 00 44 00 00 00 00 00 44 44 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 48 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 44 44 00 00 44 00 44 00 48 00 48 00 00 00 00 48 00 00 00 00 00 44 00 44 00 00 48 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 48 44 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 44 00 44 44 00 44 48 00 00 00 00 00 00 00 00 48 00 00 44 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 48 44 00 00 00 00 44 44 44 00 48 44 44 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 44 00 00 48 44 44 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 44 48 00 00 00 00 44 44 48 00 48 44 44 44 00 48 44 00 00 48 00 00 00 00 00 44 44 44 44 00 00 00 44 44 00 00 48 44 44 00 44 00 44 00 00 00 44 44 00 00 00 44 00 00 00 48 44 00 00 00 44 00 44 00 44 00 44 00 48 44 00 00 44 48 44 00 48 44 00 00 00 48 44 44 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 44 00 00 00 44 44 00 44 44 00 00 44 00 00 48 44 44 00 48 00 44 00 00 44 44 44 00 00 00 00 00 44 00 48 00 48 00 00 00 44 00 00 00 00 44 00 00 00 00 48 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 48 44 48 44 44 44 00 00 00 00 00 48 00 00 00 44 00 00 48 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 44 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 48 44 00 00 48 00 00 00 48 00 44 44 44 00 00 44 44 00 00 00 44 44 44 00 00 00 00 48 44 48 44 00 48 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 44 00 44 00 00 00 00 00 48 00 00 44 44 44 00 00 00 44 00 00 00 00 00 48 00 00 00 00 44 48 00 00 00 00 00 00 00 44 48 44 00 00 44 00 44 00 00 00 00 00 44 00 00 44 48 44 00 00 00 00 00 00
*/
