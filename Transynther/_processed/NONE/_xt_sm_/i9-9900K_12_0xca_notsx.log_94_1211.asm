.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xefbe, %r15
nop
nop
nop
and %r14, %r14
mov (%r15), %bx
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x132de, %rsi
nop
nop
nop
nop
nop
add $11052, %r14
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x14ebe, %rsi
lea addresses_D_ht+0x104ce, %rdi
inc %r15
mov $109, %rcx
rep movsq
nop
nop
nop
add $62704, %rcx
lea addresses_A_ht+0xe0be, %rbx
nop
nop
nop
nop
nop
cmp $17621, %rsi
movb (%rbx), %r12b
nop
nop
nop
nop
nop
inc %r12
lea addresses_UC_ht+0xf102, %r11
nop
nop
nop
nop
nop
add %rbx, %rbx
movl $0x61626364, (%r11)
add %rsi, %rsi
lea addresses_WC_ht+0x164be, %rsi
nop
nop
add $16922, %r15
movb (%rsi), %cl
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x603a, %rbx
clflush (%rbx)
nop
nop
nop
sub $18752, %rcx
movb $0x61, (%rbx)
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_PSE+0x12ebe, %r9
nop
nop
nop
add $9310, %r14
movl $0x51525354, (%r9)
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x18ee, %r15
nop
nop
nop
dec %rdi
mov (%r15), %r13
dec %rdi

// Store
lea addresses_normal+0x9abe, %r15
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movaps %xmm4, (%r15)
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0x5526, %r15
nop
add $56326, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
xor $27687, %r13

// Store
lea addresses_A+0xae1e, %r9
nop
nop
nop
nop
nop
inc %r13
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r9)
nop
xor $65037, %r13

// Store
mov $0x47d2680000000ebe, %r8
nop
nop
nop
cmp $50653, %rdi
movl $0x51525354, (%r8)
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0x9abe, %r13
nop
nop
nop
add $26255, %rcx
movups (%r13), %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': True, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'58': 94}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
