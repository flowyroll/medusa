.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x33c7, %r12
nop
nop
nop
cmp %rdx, %rdx
movups (%r12), %xmm3
vpextrq $0, %xmm3, %r8
nop
xor %rdx, %rdx
lea addresses_UC_ht+0xbdb, %r15
nop
nop
add $28715, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r15)
inc %rdx
lea addresses_WC_ht+0x467b, %rdx
cmp %rdi, %rdi
movl $0x61626364, (%rdx)
sub %r12, %r12
lea addresses_WT_ht+0x43fb, %rax
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %rdx
movq %rdx, (%rax)
nop
nop
cmp $54161, %rax
lea addresses_WC_ht+0x193db, %r8
nop
and $13960, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
and $0xffffffffffffffc0, %r8
vmovaps %ymm2, (%r8)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x61db, %rax
nop
dec %r8
mov (%rax), %r15d
nop
inc %rax
lea addresses_WT_ht+0x6063, %rsi
lea addresses_normal_ht+0x13bdb, %rdi
nop
nop
nop
nop
cmp $53720, %r15
mov $4, %rcx
rep movsq
nop
nop
dec %rcx
lea addresses_D_ht+0x1e3db, %rdi
nop
dec %r8
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
mov $0x6245f00000000bdb, %r8
xor %rsi, %rsi
movb $0x51, (%r8)
nop
nop
inc %r9

// Load
lea addresses_PSE+0xbdab, %r8
nop
cmp %rbp, %rbp
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
and %r9, %r9

// Store
lea addresses_A+0xbfdb, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $39475, %r9
movb $0x51, (%rsi)
nop
inc %r9

// Store
lea addresses_RW+0x182bb, %r15
nop
nop
nop
nop
sub $43357, %rsi
movl $0x51525354, (%r15)
nop
nop
and %r8, %r8

// Store
lea addresses_D+0x177bb, %r9
nop
nop
nop
nop
nop
and $18348, %r10
movb $0x51, (%r9)
nop
cmp %rbp, %rbp

// Store
lea addresses_PSE+0x1d3db, %r8
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
and %rbp, %rbp

// Faulty Load
mov $0x6245f00000000bdb, %rsi
nop
nop
xor %rbp, %rbp
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8}}
{'20': 187, '1c': 35, 'fe': 379, 'e0': 6, 'a6': 1, '48': 7, '58': 1, '5c': 1, '00': 7107, '4c': 4, '7c': 50, '6e': 9, 'e8': 1, '18': 1, '3a': 1, '7e': 1, 'b6': 1, 'fa': 12, '96': 135, '16': 1, '72': 1338, 'ca': 28, 'de': 2, 'd2': 37, 'd8': 20, '94': 509, '01': 1, 'f0': 2, '62': 71, '1f': 293, '64': 1, '14': 1, '88': 1, '04': 2, '08': 5574, 'a0': 11, '10': 2, 'a2': 42, 'ff': 4535, 'f2': 10, 'f4': 1, '7a': 104, '34': 1, 'cc': 1, '24': 1, '2e': 2, '30': 669, '60': 1, 'a8': 25, '78': 1, '38': 103, '66': 1, 'da': 1, 'c0': 42, '82': 32, '4a': 380, 'e6': 44}
00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 f0 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 34 f0 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 08 04 1f 00 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 1f 00 1f 00 08 04 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 00 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 00 72 00 08 1f 00 08 1f 00 08 00 08 1f 00 08 1f 00 08 1f 00 08 1f 00 08 08 08 1f 00 08 08 1f 00 08 1f 08 1f 00 08 1f 08 1f 00 08 1f 08 1f 08 1f 00 08 1f 00 00 08 1f 00 08 1f 00 08 1f 00 08 1f 00 08 1f 00 08 1f 08 1f 08 1f 00 08 1f 00 08 1f ff 08 1f 08 1f 08 1f 08 1f 08 1f 08 08 1f 08 1f 08 08 08 1f 08 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 08 1f 08 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 1f 08 00 ff ff ff ff ff ff ff ff ff 00 00 08 08 08 08 08 08 08 00 00 08 00 08 08 08 08 08 08 08 08 00 08 00 08 08 08 08 08 08 08 00 08 08 08 00 08 08 08 08 08 08 08 00 08 08 08 08 08 00 08 08 08 08 08 08 08 08 08 08 00 08 08 00 08 08 08 08 08 08 08 08 08 08 08 08 08 08 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 72 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 72 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 1f 72 72 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
*/
