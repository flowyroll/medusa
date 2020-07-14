.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_WT+0x29cf, %rsi
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
sub $24001, %rsi

// Store
lea addresses_US+0x164fa, %rax
clflush (%rax)
nop
nop
cmp %r8, %r8
movb $0x51, (%rax)
and %r11, %r11

// Store
lea addresses_normal+0x1a30f, %r12
cmp $16126, %r13
movb $0x51, (%r12)
nop
and $62840, %r12

// Store
lea addresses_UC+0x5a4f, %r9
xor $36350, %r13
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
dec %rax

// Store
lea addresses_A+0x186e8, %r8
nop
inc %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
dec %r9

// Store
mov $0x46e61000000040f, %rax
clflush (%rax)
nop
xor %r8, %r8
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
add $16634, %r8

// Store
lea addresses_PSE+0xf70f, %r11
nop
nop
nop
nop
add %r9, %r9
movb $0x51, (%r11)
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0x276f, %r11
nop
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
sub $5872, %rsi

// Store
lea addresses_UC+0xbb9f, %r8
nop
nop
nop
nop
inc %r9
movb $0x51, (%r8)
nop
add %rax, %rax

// Store
lea addresses_RW+0x1868f, %r8
cmp %rsi, %rsi
movw $0x5152, (%r8)
nop
nop
nop
nop
sub $3293, %r8

// Store
lea addresses_normal+0x1df0f, %r8
nop
nop
and %r9, %r9
movb $0x51, (%r8)
nop
nop
nop
add $27748, %r12

// Faulty Load
lea addresses_RW+0xef0f, %r12
nop
nop
and $54843, %rsi
movb (%r12), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'32': 336}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
