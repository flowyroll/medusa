.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x12c3c, %rsi
lea addresses_A_ht+0x11204, %rdi
clflush (%rsi)
nop
and $58640, %r9
mov $69, %rcx
rep movsb
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x1cd72, %rsi
lea addresses_normal_ht+0xfa4, %rdi
nop
nop
nop
and %rbx, %rbx
mov $21, %rcx
rep movsq
sub $26008, %rcx
lea addresses_A_ht+0xca14, %rsi
nop
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rsi)
nop
nop
nop
cmp $9938, %rdi
lea addresses_UC_ht+0x1aaa4, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $2958, %rbx
movb $0x61, (%rdi)
and $12701, %rbx
lea addresses_normal_ht+0x16aa4, %rsi
lea addresses_D_ht+0x1dbee, %rdi
nop
nop
nop
nop
sub $15827, %r12
mov $117, %rcx
rep movsb
nop
nop
xor $47228, %rbp
lea addresses_A_ht+0x13ea4, %rsi
lea addresses_UC_ht+0xe914, %rdi
nop
add %r12, %r12
mov $96, %rcx
rep movsq
nop
cmp %r12, %r12
lea addresses_D_ht+0x127fc, %rbp
clflush (%rbp)
nop
nop
cmp $51549, %r12
mov (%rbp), %rsi
nop
add %rsi, %rsi
lea addresses_WT_ht+0x159f6, %r8
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1aa64, %r8
clflush (%r8)
nop
xor $8877, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x192a4, %rsi
lea addresses_WT_ht+0x3d94, %rdi
nop
nop
sub %r8, %r8
mov $111, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x132a4, %rbx
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x160a4, %rcx
nop
nop
nop
sub $59831, %r9
mov (%rcx), %rdi
nop
nop
nop
nop
nop
sub $61112, %rbx
lea addresses_A_ht+0x10fa1, %rsi
lea addresses_normal_ht+0xb9e, %rdi
nop
nop
nop
nop
nop
sub $29013, %r12
mov $93, %rcx
rep movsb
and $1176, %rdi
lea addresses_WC_ht+0x13570, %rsi
lea addresses_normal_ht+0x1276c, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
and %r12, %r12
mov $42, %rcx
rep movsl
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x142a4, %rcx
nop
nop
sub $671, %r9
movl $0x61626364, (%rcx)
nop
nop
xor $52219, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx

// Store
mov $0x5b754a0000000f28, %r9
clflush (%r9)
nop
nop
nop
add $63618, %r10
movl $0x51525354, (%r9)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x5148, %r11
nop
nop
nop
nop
nop
cmp $11822, %rcx
movw $0x5152, (%r11)
nop
nop
nop
xor $43027, %r10

// Faulty Load
lea addresses_WT+0x1d2a4, %r9
clflush (%r9)
nop
nop
nop
sub $43660, %rcx
movb (%r9), %r11b
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'39': 50}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
