.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
mov $0x645, %r8
nop
nop
nop
sub $32304, %rbx
movl $0x51525354, (%r8)
nop
nop
nop
nop
dec %rcx

// Store
mov $0x585, %r13
nop
nop
nop
nop
dec %r11
movb $0x51, (%r13)
nop
nop
nop
nop
nop
xor %r13, %r13

// Load
mov $0xd85, %rbx
nop
nop
nop
cmp %r8, %r8
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %rcx
sub %r11, %r11

// Store
lea addresses_PSE+0x18985, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r8)
nop
nop
nop
nop
inc %r8

// Load
lea addresses_RW+0x601d, %r8
nop
nop
nop
nop
nop
cmp $20537, %r9
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
nop
cmp $18499, %rdi

// Store
lea addresses_UC+0x8745, %rbx
nop
nop
nop
cmp $26720, %rdi
movw $0x5152, (%rbx)
nop
nop
xor $46384, %rdi

// Load
lea addresses_RW+0xd4a5, %r8
nop
nop
nop
and %rdi, %rdi
mov (%r8), %bx
nop
xor %r11, %r11

// Faulty Load
lea addresses_normal+0x2585, %r9
nop
nop
nop
nop
nop
xor $16764, %rbx
vmovntdqa (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 54}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
