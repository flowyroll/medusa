.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1862c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdi)
add $55387, %rdx
lea addresses_A_ht+0xdaec, %rax
nop
nop
nop
nop
nop
dec %rcx
movb $0x61, (%rax)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x10fec, %rax
nop
nop
nop
nop
nop
and $10575, %r11
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
nop
sub $24491, %rdi
lea addresses_WT_ht+0xc0ec, %rsi
lea addresses_UC_ht+0x1394c, %rdi
clflush (%rsi)
nop
nop
xor $51696, %r8
mov $34, %rcx
rep movsw
nop
nop
nop
dec %rax
lea addresses_D_ht+0x52e6, %rsi
lea addresses_UC_ht+0x19c1b, %rdi
clflush (%rdi)
nop
inc %rbx
mov $63, %rcx
rep movsb
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x23ec, %rsi
lea addresses_UC_ht+0x13aba, %rdi
cmp $35559, %r11
mov $32, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $40985, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rsi

// Load
lea addresses_RW+0x167ec, %rsi
nop
dec %rax
mov (%rsi), %r10
nop
nop
and %rax, %rax

// Load
lea addresses_A+0x1cf1c, %r13
nop
nop
nop
nop
mfence
mov (%r13), %r10d
nop
nop
nop
add $20007, %r13

// Store
lea addresses_WC+0x1a7ec, %r11
clflush (%r11)
nop
dec %rbp
movb $0x51, (%r11)
nop
sub $57165, %r10

// Store
lea addresses_normal+0x1a14c, %rbp
nop
nop
sub $18967, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbp)

// Exception!!!
nop
mov (0), %r10
nop
sub $27379, %r11

// Store
lea addresses_RW+0xea2c, %r11
nop
nop
nop
nop
xor $46804, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
nop
nop
cmp $43719, %r10

// Store
lea addresses_D+0xb46c, %rsi
nop
nop
nop
nop
nop
add $12707, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rsi)
inc %r9

// Store
lea addresses_normal+0x5d6c, %r10
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
and $47861, %r9

// Store
lea addresses_normal+0x1ebec, %rbp
nop
nop
nop
xor $40688, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0xd6c, %r13
clflush (%r13)
nop
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r13)
cmp %r10, %r10

// Store
lea addresses_RW+0x14fec, %r10
nop
and %r9, %r9
movb $0x51, (%r10)
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0x290df2000000062c, %r9
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r9)
sub $61004, %r11

// Store
lea addresses_WT+0x3c94, %rax
nop
nop
nop
nop
nop
and $18561, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_RW+0x167ec, %rax
add $48067, %rbp
vmovaps (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'e8': 35, '26': 1, '87': 1, '8f': 1, '16': 1, '04': 1, '10': 1, 'ea': 1, 'ac': 1, '60': 1375, 'be': 2, '86': 1422, '90': 1, '03': 1, '00': 11790, 'f0': 1}
00 00 00 60 00 00 00 00 00 00 00 00 00 86 00 00 00 60 00 00 00 00 00 00 00 00 00 60 00 00 00 60 00 00 00 00 00 00 60 60 00 00 00 00 00 60 86 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 60 00 00 00 00 86 00 00 00 00 00 60 00 00 00 00 00 00 86 00 00 00 00 00 86 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 60 00 00 86 00 60 00 60 00 00 00 00 00 00 00 00 00 00 00 86 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 60 00 00 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 86 60 00 00 00 60 86 00 00 00 00 00 00 00 00 60 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 60 00 00 60 00 60 00 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 86 00 00 00 00 00 00 00 00 00 00 00 00 00 86 00 60 00 00 00 00 60 60 00 60 86 86 00 00 00 86 00 00 60 00 00 60 00 00 00 00 00 60 00 00 00 00 60 00 00 00 00 60 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 86 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 86 00 00 00 86 00 00 00 00 00 00 00 00 00 60 60 00 00 86 60 00 00 00 00 00 00 00 00 00 00 00 00 60 00 86 00 00 e8 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 60 00 00 86 00 86 00 00 00 86 00 00 00 00 00 00 00 00 00 00 60 00 86 00 00 00 00 00 00 00 86 00 86 00 00 00 86 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 86 00 00 60 60 00 86 60 00 00 00 86 60 00 00 00 60 86 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 60 00 00 00 00 60 00 00 00 00 86 00 00 00 86 60 00 00 00 00 00 00 00 86 60 60 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 86 00 60 00 00 00 60 00 60 00 86 00 00 00 00 86 00 00 00 00 60 60 00 86 00 00 00 00 00 86 00 60 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 00 60 00 00 00 00 00 00 86 00 00 60 00 00 00 00 00 00 00 00 00 00 00 60 00 60 60 00 00 00 86 00 00 00 60 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 60 00 00 00 60 00 00 00 60 00 00 00 00 00 00 00 00 00 60 86 00 00 60 86 00 00 00 86 00 00 86 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 00 60 00 00 00 00 00 00 86 00 00 86 00 00 00 00 00 86 60 00 86 00 00 00 00 00 86 60 00 00 60 00 00 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 00 00 00 00 00 00 00 00 60 00 00 60 00 00 00 00 00 60 00 00 86 00 00 00 00 00 86 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 86 00 86 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 00 00 00 00 60 00 60 00 00 00 00 86 00 00 00 00 00 00 00 60 00 00 00 00 86 00 60 00 00 00 60 00 00 60 00 00 86 00 86 00 00 86 00 00 00 00 00 00 00 00 00 00 00 60 60 60 00 86 00 00 00 86 86 00 00 00 00 00 86 60 00 00 00 00 00 00 00 86 00 00 00 00
*/
