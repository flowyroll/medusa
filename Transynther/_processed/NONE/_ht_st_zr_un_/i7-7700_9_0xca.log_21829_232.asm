.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1161, %r8
nop
nop
sub $16050, %r11
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x18b71, %rbx
nop
nop
cmp %r14, %r14
mov (%rbx), %r12d
nop
xor $30033, %r10
lea addresses_WT_ht+0xa331, %rsi
lea addresses_A_ht+0x9971, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $41968, %r11
mov $36, %rcx
rep movsb
nop
nop
nop
nop
add $56571, %rcx
lea addresses_WT_ht+0x16571, %rsi
lea addresses_A_ht+0x1cb71, %rdi
nop
inc %r14
mov $112, %rcx
rep movsw
inc %r14
lea addresses_A_ht+0x16c51, %rsi
lea addresses_WT_ht+0x17409, %rdi
clflush (%rsi)
nop
nop
nop
inc %r11
mov $30, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x1d7cd, %rsi
lea addresses_UC_ht+0x3601, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x5771, %r11
clflush (%r11)
cmp %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
add $21530, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_normal+0x14739, %r12
nop
nop
nop
nop
nop
add $64132, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r12)
sub $38023, %rax

// Faulty Load
lea addresses_A+0x11b71, %rax
nop
add %r12, %r12
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %r12
and $0xff, %r15
shlq $12, %r15
mov (%r12,%r15,1), %r15
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal_ht'}}
{'46': 6388, '47': 6, '45': 544, 'ff': 10261, 'e8': 1, '53': 1386, '00': 2551, '49': 692}
46 ff 49 00 ff ff ff 46 ff 46 ff ff ff 46 ff ff ff 00 46 ff ff ff 46 46 ff 00 ff ff 45 00 ff 49 00 46 ff 46 ff ff ff ff ff 46 ff ff 46 ff ff 46 46 46 ff ff 46 ff ff ff 46 46 ff 45 ff ff ff ff ff 46 ff ff ff ff ff 45 ff 46 ff 46 ff ff ff 46 ff 46 ff 53 00 ff 00 46 46 46 46 46 46 ff ff ff ff ff 46 ff ff ff ff ff 00 49 00 ff ff ff 46 46 ff 46 53 00 46 ff 46 ff 53 00 ff ff 00 46 53 ff 00 ff 46 00 ff ff 46 46 46 46 ff 46 46 ff 46 ff 45 00 46 ff 00 ff 46 ff ff 00 49 00 ff 46 46 46 46 46 53 00 46 ff ff ff 46 46 ff ff ff 46 53 00 53 00 46 ff ff 46 ff ff 46 ff ff ff ff ff ff ff 53 00 ff 46 46 ff ff 46 46 46 46 ff ff 46 ff 46 ff 00 49 ff ff ff 49 00 45 ff ff ff 46 46 ff 46 ff ff ff ff 46 49 ff ff ff ff 46 ff 46 ff ff 46 46 46 ff 46 ff 46 ff 46 ff 45 ff ff ff 46 ff 46 ff ff 46 46 ff 46 46 ff ff ff 46 ff 46 45 00 ff 46 ff ff 46 46 ff ff ff 46 ff 46 ff 46 ff ff ff 46 ff 49 00 ff ff 49 00 ff 46 00 53 00 ff 46 ff 46 ff 46 46 ff ff ff 46 46 46 46 46 ff 46 46 ff ff 46 ff 46 ff 53 00 ff 46 53 00 ff ff ff 53 ff ff 46 46 46 46 53 ff ff 46 ff 49 00 ff ff 46 ff 46 ff 46 ff 46 ff ff ff 46 ff 46 46 ff 46 ff ff 46 ff ff ff 53 46 ff 45 00 ff ff 53 00 ff ff ff ff 46 ff ff 46 ff 53 ff 46 ff 46 ff ff ff ff ff ff 46 45 00 ff ff 00 46 ff ff 46 46 49 00 ff ff 46 46 46 46 ff ff 00 ff 46 ff 46 46 ff ff ff ff ff 53 00 ff ff ff ff ff 46 ff ff ff ff 45 00 49 00 ff ff 46 ff ff 00 46 46 ff ff 46 53 00 46 45 46 46 ff ff ff ff ff 46 ff ff ff 46 ff ff ff 53 00 46 46 46 ff 46 53 46 ff 46 ff ff ff ff ff 46 ff 46 53 00 46 ff ff 53 00 ff 53 00 ff 46 ff ff ff ff ff 46 ff 53 00 53 00 49 00 45 00 49 00 45 ff ff ff ff ff 00 49 00 46 ff 46 ff ff ff ff ff ff ff 46 46 46 ff 53 00 46 45 00 ff ff ff 00 ff 00 46 46 46 ff ff 46 ff 46 53 00 53 ff ff ff ff ff ff 46 53 00 46 ff 46 ff 46 ff 53 00 ff ff ff ff ff ff 46 ff 46 ff 46 46 ff 46 46 ff ff 46 46 46 ff ff 53 ff 49 00 46 00 ff 49 00 ff ff ff ff ff 46 ff 45 00 ff 46 ff 46 ff ff ff 00 53 ff ff ff ff 53 00 49 ff ff 46 ff ff ff ff 00 ff 46 ff 46 46 46 ff ff 46 ff ff ff ff ff 46 ff 46 ff ff ff 46 00 ff 46 53 00 ff ff ff ff 46 ff 46 ff ff 49 00 ff 46 53 00 46 53 46 49 00 ff ff 46 46 ff ff ff ff 45 00 49 00 ff ff 45 00 46 ff ff ff 46 ff ff ff ff ff 46 ff 46 46 49 00 ff ff ff 53 00 46 46 ff 53 00 46 ff 49 00 ff 46 46 46 ff ff ff 46 ff ff ff ff 46 ff ff 46 46 ff ff ff ff 53 ff 53 00 ff 46 ff ff 46 ff 46 ff ff 46 ff 46 53 00 46 46 53 46 46 ff ff ff 46 46 ff 49 00 45 49 00 46 46 ff ff 46 ff 45 00 49 00 ff 00 46 ff ff ff ff ff 46 ff ff ff 53 00 46 ff ff ff 46 ff 46 ff 46 46 ff 46 ff 53 ff ff ff 46 45 00 ff 46 ff ff 46 ff 46 ff ff 46 53 ff ff 46 49 00 53 00 ff ff ff ff ff 46 ff 46 ff ff 46 46 ff 46 46 ff ff ff 00 53 00 ff ff 53 00 ff ff 46 46 46 ff 46 ff ff 46 ff ff 49 00 46 ff ff ff ff 46 53 00 46 ff ff 46 ff ff ff 46 46 ff 46 ff ff ff ff 53 00 46 ff ff 46 46 53 00 ff 49 00 ff 49 00 45 00 ff 46 46 ff ff ff ff ff ff ff 45 00 49 46 ff 46 ff ff 46 ff 53 00 46 ff 46 ff ff ff 46 53 00 46 ff ff ff 46 ff 49 00 49 00 53 00 ff ff ff ff 46 46 46 46 ff 46 ff ff ff 00 ff 49
*/
