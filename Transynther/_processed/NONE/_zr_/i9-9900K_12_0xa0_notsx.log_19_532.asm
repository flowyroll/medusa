.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1c60d, %rsi
lea addresses_UC_ht+0xcd0d, %rdi
nop
sub $32870, %r11
mov $74, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x175cd, %rsi
lea addresses_WC_ht+0x14b0d, %rdi
nop
nop
nop
nop
dec %rbx
mov $57, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbx

// Load
lea addresses_US+0x4b0d, %rax
nop
nop
nop
add %r10, %r10
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
nop
nop
nop
nop
add $10412, %rax

// Store
lea addresses_D+0xbb75, %r10
clflush (%r10)
nop
nop
nop
nop
dec %r9
movl $0x51525354, (%r10)
nop
cmp $20264, %rax

// Store
lea addresses_normal+0x162dd, %r8
nop
nop
nop
xor %r15, %r15
movw $0x5152, (%r8)
nop
nop
nop
sub $29675, %rbx

// Store
mov $0x63783d00000005cd, %r15
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
add $27809, %rbx

// Store
lea addresses_PSE+0x5b0d, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%r9)
nop
nop
nop
cmp %r8, %r8

// Load
mov $0xad, %r8
nop
nop
nop
add $53309, %r15
mov (%r8), %rbx
nop
nop
nop
add %r10, %r10

// Faulty Load
lea addresses_A+0x870d, %r14
nop
nop
nop
sub %r9, %r9
mov (%r14), %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'00': 19}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
