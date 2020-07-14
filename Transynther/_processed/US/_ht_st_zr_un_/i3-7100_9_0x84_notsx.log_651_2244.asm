.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x6d39, %rdx
sub %rsi, %rsi
movb (%rdx), %al
and %r13, %r13
lea addresses_A_ht+0x7e1b, %r8
nop
nop
nop
nop
nop
inc %r12
mov $0x6162636465666768, %rax
movq %rax, (%r8)
nop
nop
inc %r12
lea addresses_UC_ht+0x12939, %rsi
lea addresses_A_ht+0x6774, %rdi
clflush (%rsi)
nop
nop
nop
sub $43900, %r8
mov $72, %rcx
rep movsl
nop
inc %r13
lea addresses_D_ht+0x1088d, %rdx
clflush (%rdx)
nop
nop
nop
xor $15080, %rcx
movb $0x61, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x8ff9, %rsi
lea addresses_D_ht+0x1bd79, %rdi
xor $37271, %rax
mov $60, %rcx
rep movsw
nop
nop
and $27372, %rsi
lea addresses_UC_ht+0x1d079, %r13
nop
nop
nop
add %rdx, %rdx
mov (%r13), %eax
nop
nop
nop
sub $6999, %rdi
lea addresses_WT_ht+0xd939, %r8
add $21090, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x2079, %r12
nop
nop
nop
nop
nop
cmp $8146, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add $62504, %r12
lea addresses_D_ht+0xaa39, %rdx
xor $18872, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
add $58474, %r8
lea addresses_D_ht+0x5e1a, %rax
nop
nop
nop
nop
nop
inc %r8
movl $0x61626364, (%rax)
nop
and $12868, %rax
lea addresses_WT_ht+0x1bc39, %rsi
cmp %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
dec %rdx
lea addresses_UC_ht+0x19939, %rdi
add %rsi, %rsi
movb (%rdi), %cl
add $17983, %rcx
lea addresses_UC_ht+0x1bed9, %rcx
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1d9fd, %r12
sub $34054, %rsi
movl $0x51525354, (%r12)
add $55467, %rdx

// REPMOV
lea addresses_US+0x1e891, %rsi
lea addresses_D+0x1dcb9, %rdi
nop
nop
and $16121, %r10
mov $27, %rcx
rep movsq
nop
xor %rdx, %rdx

// Store
mov $0x7301260000000839, %rsi
nop
and $44608, %r11
movb $0x51, (%rsi)

// Exception!!!
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
add $19199, %r10

// Faulty Load
lea addresses_US+0x1b139, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'47': 8, '72': 1, '18': 5, '67': 255, 'd0': 1, '60': 11, 'fc': 1, '51': 10, '03': 1, '46': 2, '49': 52, '00': 302, '61': 1, 'e8': 1}
00 00 67 51 00 60 49 67 49 00 67 00 00 67 49 67 00 67 67 67 00 18 67 00 00 00 00 00 49 67 49 67 00 67 46 00 00 67 00 00 00 00 00 67 00 67 49 49 00 00 51 67 00 00 67 51 67 67 00 00 00 00 00 00 00 00 00 00 00 00 00 67 00 67 67 67 00 67 00 00 00 00 00 67 00 67 67 00 67 00 67 00 00 00 00 67 00 67 49 00 00 67 67 67 49 00 60 00 49 67 00 00 00 00 51 67 00 49 67 00 67 49 00 67 49 00 67 00 67 00 67 67 67 00 49 00 67 00 00 00 67 67 47 00 67 47 67 67 00 67 67 00 67 67 67 00 67 00 67 49 00 60 67 49 00 67 67 67 67 00 67 67 00 49 00 67 00 67 67 67 67 00 00 67 67 00 00 67 67 67 67 67 67 67 67 00 67 00 67 00 67 00 00 00 00 00 00 67 00 67 00 49 67 67 49 67 46 67 00 00 00 00 60 00 67 67 67 67 00 00 00 00 67 67 51 67 00 00 00 00 67 67 00 00 67 00 00 00 49 00 00 00 67 67 00 67 00 67 67 00 60 67 49 67 67 67 67 67 49 00 67 67 67 00 49 67 67 67 67 00 67 00 49 00 67 67 00 00 00 00 00 67 67 67 49 47 67 00 67 00 18 67 67 67 49 60 67 00 00 67 67 67 00 67 00 67 67 51 00 67 60 67 67 00 00 67 00 00 00 67 00 67 67 61 67 49 67 67 67 00 49 49 00 49 67 00 67 00 49 67 00 00 67 67 00 49 67 00 67 00 18 67 49 67 67 67 67 67 00 67 67 fc 00 00 00 67 67 00 00 67 00 00 00 51 67 00 00 00 49 67 00 00 00 67 00 67 67 00 67 67 67 00 67 00 47 00 67 72 67 67 60 00 00 67 00 47 00 00 00 00 00 00 00 67 00 67 67 67 49 49 67 00 18 00 67 67 67 00 49 d0 67 67 00 00 00 00 67 00 49 00 67 00 00 67 67 00 67 00 00 00 00 00 67 00 00 00 00 51 67 00 67 67 51 00 67 00 67 00 00 67 67 00 67 00 67 00 00 67 00 00 00 00 67 67 00 00 00 00 49 03 67 00 67 00 67 00 67 00 00 00 18 00 00 67 67 67 67 67 00 51 67 00 67 49 00 00 49 67 67 00 00 00 00 00 00 00 60 00 00 00 00 67 00 00 67 67 47 00 67 00 67 00 00 67 00 00 67 67 00 60 67 00 00 49 00 67 67 67 00 67 00 47 49 00 49 00 49 67 00 67 67 67 67 00 67 00 67 00 49 67 49 00 00 67 49 00 00 00 00 00 67 e8 00 67 00 49 00 00 00 67 67 00 00 00 49 49 00 67 67 00 67 67 60 67 00 00 00 00 47 00 67 00 00 00 67 67 67 00 67 00 67 00 00 49 00 00 00 00 00 00 67
*/
