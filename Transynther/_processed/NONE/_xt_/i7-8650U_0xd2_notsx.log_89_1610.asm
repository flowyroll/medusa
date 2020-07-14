.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xfcfb, %rsi
lea addresses_A_ht+0x17e32, %rdi
nop
nop
nop
nop
nop
add $61475, %r11
mov $54, %rcx
rep movsw
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x162ee, %rsi
lea addresses_A_ht+0x1e0de, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %r13
mov $122, %rcx
rep movsb
nop
nop
cmp $5820, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rsi

// Load
lea addresses_US+0x1b9e, %r12
nop
dec %rcx
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
inc %r12

// Store
mov $0x69e, %r15
nop
sub $58499, %r13
movb $0x51, (%r15)
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_PSE+0x1fb9e, %rcx
nop
nop
sub %r13, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_WT+0xeb9e, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp %r11, %r11
vmovups (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
nop
nop
nop
cmp %r12, %r12

// Store
lea addresses_WT+0x4f9e, %rsi
cmp %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
cmp $64614, %r13

// Store
lea addresses_RW+0x1529e, %rcx
nop
and %r11, %r11
movl $0x51525354, (%rcx)
cmp %r15, %r15

// Load
lea addresses_UC+0xab9e, %r12
clflush (%r12)
cmp $2069, %r13
movb (%r12), %r14b
nop
nop
dec %r14

// Faulty Load
lea addresses_WT+0xeb9e, %rsi
nop
nop
xor $39151, %r14
movb (%rsi), %r11b
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'39': 89}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
