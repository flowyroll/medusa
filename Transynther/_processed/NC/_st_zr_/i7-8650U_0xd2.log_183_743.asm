.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xdc1, %rsi
lea addresses_D_ht+0x18d27, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $19772, %r14
lea addresses_UC_ht+0x16877, %rbx
nop
sub $2328, %rsi
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rdi
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdx

// Store
lea addresses_normal+0x1927, %r8
nop
nop
nop
nop
cmp $1917, %rcx
movw $0x5152, (%r8)
nop
nop
add $5030, %rcx

// Store
lea addresses_PSE+0x1d27, %r14
xor %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r14)
xor %r8, %r8

// Load
lea addresses_PSE+0x7ea7, %r14
nop
nop
nop
nop
nop
xor $47862, %rdx
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
cmp $42902, %r8

// Store
mov $0x5a0f510000000a27, %rcx
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%rcx)
nop
and $14537, %rcx

// Store
lea addresses_RW+0x15867, %rdx
clflush (%rdx)
xor %r12, %r12
movl $0x51525354, (%rdx)
nop
nop
nop
nop
sub $13543, %r14

// Faulty Load
mov $0x6d20800000000927, %r8
cmp $12416, %r10
mov (%r8), %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 110, '52': 73}
00 52 52 00 00 52 52 00 00 52 52 52 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 52 52 52 00 52 52 00 00 52 00 00 00 52 52 00 00 52 52 00 00 00 00 52 00 00 00 00 52 00 52 00 52 00 52 52 52 00 00 52 52 52 52 52 00 52 00 00 00 00 00 00 00 00 52 00 52 52 52 00 00 52 00 00 00 52 00 52 52 00 00 00 00 52 52 52 52 00 00 52 00 52 52 00 00 00 00 00 52 52 52 52 00 52 00 00 00 00 52 00 00 00 52 00 00 52 00 52 00 52 52 52 00 52 00 00 52 00 00 52 00 52 52 52 52 00 00 52 00 00 00 52 00 00 00 00 00 52 00 00 52 00 00 00 52 00 00 00 52 00 00 00 00 52 00 00
*/
