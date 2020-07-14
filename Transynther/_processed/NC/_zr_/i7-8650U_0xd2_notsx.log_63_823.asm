.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb148, %r13
nop
nop
nop
xor $7696, %r15
vmovups (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
sub $37077, %r11
lea addresses_WC_ht+0x8458, %r15
nop
nop
nop
and $1833, %rbx
movups (%r15), %xmm6
vpextrq $1, %xmm6, %r9
cmp %r13, %r13
lea addresses_normal_ht+0x66a8, %rbx
nop
nop
nop
nop
and %rcx, %rcx
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x12d48, %rbx
nop
nop
nop
nop
and $12248, %r9
mov (%rbx), %r13w
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x18948, %rsi
lea addresses_WT_ht+0xb308, %rdi
nop
nop
add %r13, %r13
mov $96, %rcx
rep movsb
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %r9
push %rcx

// Store
lea addresses_A+0x965c, %r11
nop
nop
sub $12824, %r9
movw $0x5152, (%r11)
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x3cc, %r9
and %r8, %r8
movb $0x51, (%r9)
nop
xor %r14, %r14

// Store
mov $0x26e9030000000a80, %r8
add %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
and $21326, %r14

// Store
lea addresses_PSE+0x4148, %r10
nop
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%r10)
nop
nop
xor %r15, %r15

// Faulty Load
mov $0x739d140000000548, %r8
nop
nop
nop
sub $2028, %r14
movb (%r8), %r15b
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}}
{'00': 63}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
