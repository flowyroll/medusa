.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rbx
push %rcx
lea addresses_normal_ht+0x15085, %r11
nop
nop
nop
nop
add $4601, %r15
movb $0x61, (%r11)
xor $2836, %rbx
pop %rcx
pop %rbx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WC+0x114a5, %rax
clflush (%rax)
sub $21545, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
nop
and $4914, %r12

// Store
lea addresses_WT+0x1c6a5, %rsi
nop
add %rbx, %rbx
movw $0x5152, (%rsi)
inc %rbp

// Store
lea addresses_RW+0x1545, %rbp
sub %r12, %r12
movw $0x5152, (%rbp)
nop
xor %r12, %r12

// Store
mov $0x18d5bc00000004a5, %rdx
clflush (%rdx)
nop
cmp %r15, %r15
movb $0x51, (%rdx)
nop
nop
nop
nop
dec %r12

// Store
mov $0x16af120000000025, %rsi
and $31895, %rbp
movb $0x51, (%rsi)
nop
nop
dec %rbx

// Store
lea addresses_normal+0xc4af, %rax
nop
nop
nop
nop
nop
sub $52254, %rbp
movl $0x51525354, (%rax)
nop
cmp $47320, %rbx

// Store
mov $0xa85, %r15
nop
nop
sub %r12, %r12
movb $0x51, (%r15)
cmp %rax, %rax

// Load
lea addresses_UC+0x11e15, %r12
nop
nop
nop
nop
nop
add $46708, %rbp
mov (%r12), %rsi
add %r12, %r12

// Store
lea addresses_WT+0x98a5, %rax
cmp %rbp, %rbp
movl $0x51525354, (%rax)
nop
nop
nop
xor $31752, %rbx

// Faulty Load
mov $0x18d5bc00000004a5, %rdx
nop
nop
nop
xor $29554, %r15
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'00': 1}
00
*/
