.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x5f5c, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r15), %al
nop
nop
nop
nop
and $36727, %rdx

// Store
lea addresses_WT+0x141aa, %r15
clflush (%r15)
nop
nop
nop
nop
nop
inc %r12
movb $0x51, (%r15)
nop
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x90249000000097a, %r9
nop
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%r9)
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x95ba, %rsi
clflush (%rsi)
nop
nop
nop
and %r12, %r12
mov (%rsi), %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'5e': 2, '47': 1165, '00': 5536, '61': 7, '60': 6, 'd0': 7648, '62': 1, '80': 51, '5f': 2}
00 00 d0 d0 47 d0 00 00 d0 00 00 d0 d0 47 d0 d0 d0 47 d0 00 00 00 d0 00 d0 00 00 00 00 00 47 00 00 00 00 00 00 d0 d0 00 47 d0 d0 d0 d0 47 d0 d0 00 d0 00 47 00 d0 d0 d0 00 00 00 00 d0 d0 d0 00 00 d0 d0 d0 00 d0 d0 d0 47 d0 d0 00 d0 00 00 00 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 00 00 d0 d0 d0 d0 d0 d0 47 d0 47 00 47 d0 00 d0 d0 47 00 d0 d0 00 00 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 d0 00 d0 d0 00 00 00 d0 00 47 d0 d0 d0 d0 d0 00 47 d0 d0 47 d0 00 d0 d0 d0 d0 00 d0 00 00 d0 d0 d0 00 00 00 d0 00 47 d0 00 00 00 d0 00 d0 d0 00 00 d0 d0 00 00 00 47 d0 d0 d0 d0 00 d0 00 d0 00 d0 d0 d0 47 00 d0 00 d0 00 d0 d0 00 00 d0 47 47 d0 00 d0 00 47 d0 d0 47 00 d0 d0 d0 00 d0 d0 00 d0 00 d0 d0 d0 00 00 00 00 00 d0 d0 00 00 d0 00 00 47 d0 d0 d0 d0 00 d0 d0 d0 d0 d0 d0 00 d0 00 d0 47 d0 00 00 d0 d0 00 00 d0 00 d0 d0 d0 00 00 47 d0 00 00 d0 80 d0 00 d0 47 d0 d0 d0 00 00 d0 d0 00 00 d0 d0 00 d0 00 00 d0 d0 00 d0 d0 d0 00 d0 d0 00 d0 d0 d0 d0 00 00 d0 00 d0 00 00 d0 d0 d0 d0 d0 d0 d0 d0 00 d0 d0 d0 00 d0 d0 00 d0 d0 d0 d0 d0 00 00 00 d0 00 47 d0 d0 47 d0 00 00 00 d0 00 d0 00 d0 00 00 00 00 d0 00 00 d0 00 d0 d0 d0 d0 d0 d0 d0 d0 00 d0 d0 d0 00 00 d0 d0 47 d0 d0 d0 d0 00 d0 d0 d0 00 d0 d0 d0 47 d0 d0 d0 d0 d0 d0 00 00 00 00 00 d0 00 00 d0 d0 00 d0 d0 00 d0 d0 00 47 00 00 00 d0 d0 00 d0 d0 00 00 00 d0 d0 00 d0 00 00 00 d0 d0 00 00 00 d0 d0 00 d0 d0 d0 d0 d0 00 d0 d0 00 d0 d0 d0 d0 d0 d0 d0 d0 00 d0 00 00 00 00 00 d0 00 00 00 00 00 00 00 d0 00 d0 d0 00 d0 d0 d0 00 d0 00 00 d0 00 00 d0 47 d0 00 d0 00 00 00 00 00 00 00 00 00 d0 d0 00 d0 d0 d0 47 d0 d0 d0 00 80 00 00 d0 d0 d0 d0 d0 00 00 d0 d0 d0 d0 d0 00 80 00 d0 00 d0 d0 00 00 d0 00 47 d0 d0 d0 00 00 d0 d0 d0 d0 00 00 d0 d0 d0 d0 d0 00 d0 00 00 d0 00 d0 00 00 00 47 d0 00 47 00 00 00 d0 00 00 d0 d0 d0 d0 d0 d0 d0 d0 d0 00 00 d0 d0 d0 00 d0 d0 d0 00 d0 d0 d0 d0 d0 d0 00 00 00 00 d0 00 00 00 00 d0 d0 00 00 d0 d0 80 d0 00 00 d0 00 d0 d0 d0 d0 d0 00 00 d0 d0 d0 d0 00 d0 d0 00 d0 00 d0 00 00 47 d0 d0 d0 d0 00 d0 47 d0 d0 47 00 00 00 d0 d0 d0 00 00 00 d0 d0 d0 d0 d0 d0 d0 00 d0 00 00 47 d0 d0 d0 d0 d0 00 d0 00 47 d0 47 d0 d0 d0 d0 00 d0 00 00 00 47 d0 00 d0 d0 00 00 00 d0 00 d0 00 d0 00 00 d0 47 d0 00 d0 d0 00 00 47 d0 d0 d0 00 d0 d0 d0 00 d0 d0 80 d0 00 00 00 d0 00 d0 d0 00 d0 00 00 00 47 d0 00 00 d0 d0 d0 d0 00 d0 47 d0 00 00 00 d0 00 d0 00 47 00 d0 00 d0 d0 d0 00 d0 d0 d0 d0 d0 00 d0 00 d0 00 d0 d0 d0 d0 d0 00 00 d0 00 d0 00 d0 d0 d0 00 00 00 d0 d0 d0 d0 d0 d0 47 00 00 d0 00 00 d0 00 00 00 d0 d0 d0 d0 00 d0 d0 d0 d0 d0 d0 d0 00 00 d0 d0 00 47 d0 00 d0 d0 d0 d0 00 d0 00 00 d0 d0 d0 d0 d0 d0 d0 00 d0 d0 00 d0 d0 00 d0 00 00 d0 d0 00 d0 00 d0 d0 d0 d0 d0 d0 d0 00 d0 00 d0 d0 d0 d0 00 00 00 d0 d0 d0 d0 00 00 00 d0 d0 d0 d0 d0 47 00 d0 00 d0 00 00 d0 00 d0 d0 d0 d0 d0 00 d0 d0 00 00 d0 00 47 d0 d0 d0 00 00 47 d0 d0 d0 d0 d0 d0 00 d0 00 47 d0 00 d0 00 d0 00 00 d0 00 00 00 d0 00 d0 d0 d0 d0 00 00 d0 d0 d0 d0 d0 d0 00 00 00 d0 d0 00 00 d0 00 47 00 00 00 00 00 00 00 00 47 00 47 d0 47 d0 00 d0 00 00 00 00 d0 00 00 d0 00 d0 00 d0 d0 00 d0 d0 00 d0 00 d0
*/
