.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7536, %rsi
lea addresses_UC_ht+0x1db06, %rdi
nop
nop
nop
and $48081, %r15
mov $93, %rcx
rep movsb
nop
nop
nop
nop
nop
add $24066, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0xb1b6, %rax
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
cmp $32132, %rsi

// Store
lea addresses_D+0x1c2b6, %rsi
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rsi)
nop
nop
sub %r15, %r15

// Store
lea addresses_WT+0x2c96, %rbx
nop
add %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movups %xmm2, (%rbx)
nop
nop
nop
cmp $52272, %r14

// Store
lea addresses_WC+0x1212d, %r15
nop
cmp $58765, %rax
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub $21371, %rsi

// Load
lea addresses_normal+0x4ace, %r14
nop
nop
nop
dec %r9
mov (%r14), %ax
nop
nop
nop
sub %r15, %r15

// Store
mov $0x4d020b0000000eb6, %rcx
nop
nop
nop
cmp %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0x4ab6, %r9
inc %rbx
movb $0x51, (%r9)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_PSE+0x1d416, %rbx
nop
nop
and $26874, %r15
movl $0x51525354, (%rbx)
add %r9, %r9

// Faulty Load
lea addresses_US+0x132b6, %rbx
nop
nop
cmp $61132, %rsi
mov (%rbx), %r9w
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 200, '51': 64}
00 00 00 00 00 51 00 00 51 51 00 00 00 51 51 51 51 00 00 00 00 00 51 00 00 00 51 00 00 51 00 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 00 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 51 00 00 00 51 00 00 00 00 00 51 00 00 51 00 51 51 00 00 00 00 00 00 00 00 00 51 51 00 00 51 00 51 00 00 00 00 00 51 00 00 51 00 00 51 00 00 00 51 00 00 00 00 00 51 51 51 51 51 51 51 51 00 00 00 00 00 00 00 00 00 00 00 51 00 51 00 00 00 51 00 00 00 00 00 00 00 00 51 00 00 00 00 00 00 00 00 51 51 00 51 51 00 00 00 00 51 51 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 00 00 51 51 00 00 51 00 51 00 00 00 00 00 51 00 00 00 00 51 51 00 00 00 00 00 00 00 00 00 00 00 00 00 51 51 00 00 00 00 00 00 00 51 00 00 00 00 00 51 00 00 00 51 00 00 00 00 00 51 00 00 00 00 00 00 51 51 00 00
*/
