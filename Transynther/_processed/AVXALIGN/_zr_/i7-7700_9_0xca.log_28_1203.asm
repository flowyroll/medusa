.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12c6c, %rsi
lea addresses_D_ht+0x1c1b0, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $23, %rcx
rep movsw
and %r15, %r15
lea addresses_UC_ht+0x1eb6c, %rdi
nop
add %r10, %r10
movb $0x61, (%rdi)
nop
nop
nop
and $62697, %r10
lea addresses_UC_ht+0xd08, %rsi
lea addresses_UC_ht+0xcbf0, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $42, %rcx
rep movsb
nop
and $24640, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rdi
push %rdx

// Load
mov $0x778a630000000cec, %rax
nop
nop
nop
nop
add $51981, %r15
vmovaps (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
inc %r11

// Load
lea addresses_D+0x1ecac, %rax
clflush (%rax)
nop
nop
nop
nop
nop
inc %r10
movups (%rax), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_US+0x1525c, %r8
nop
nop
dec %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
dec %r15

// Store
mov $0xa9c, %r8
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
xor $8778, %rdi

// Faulty Load
lea addresses_US+0x2c6c, %rax
nop
nop
nop
nop
inc %rdi
movb (%rax), %dl
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'00': 28}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
