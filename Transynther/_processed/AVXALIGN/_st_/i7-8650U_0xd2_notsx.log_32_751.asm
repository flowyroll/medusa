.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x5387, %rsi
lea addresses_UC_ht+0xbe5b, %rdi
sub %rdx, %rdx
mov $118, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1766b, %r9
xor $6939, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r9)
nop
inc %r9
lea addresses_normal_ht+0x1d9fb, %r9
nop
nop
nop
nop
nop
and $21158, %rbx
mov (%r9), %di
sub $26534, %rbx
lea addresses_WT_ht+0x1d01b, %rsi
lea addresses_normal_ht+0x1ee5b, %rdi
nop
nop
xor %r10, %r10
mov $110, %rcx
rep movsw
nop
nop
nop
nop
add $25890, %rcx
lea addresses_normal_ht+0x3c41, %r11
nop
xor %rsi, %rsi
mov (%r11), %rdi
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1465b, %r9
nop
nop
xor $31865, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r9)
nop
cmp $29217, %rsi
lea addresses_WC_ht+0xa25b, %rbx
nop
nop
nop
nop
nop
and $61908, %rdx
mov (%rbx), %rdi
nop
nop
nop
and $33814, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rdi

// Load
lea addresses_RW+0x1545b, %r14
nop
add $49391, %r13
mov (%r14), %r10w
add %r10, %r10

// Store
mov $0x40053e0000000e5b, %r9
nop
nop
nop
sub %r8, %r8
movl $0x51525354, (%r9)
and %r8, %r8

// Store
mov $0x492d1900000007ff, %r13
clflush (%r13)
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
add $10017, %r10

// Store
lea addresses_D+0x1c85b, %rdi
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
nop
cmp $44291, %r14

// Faulty Load
lea addresses_WT+0x1d65b, %r8
nop
nop
nop
nop
nop
and $18559, %r15
mov (%r8), %edi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'39': 32}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
