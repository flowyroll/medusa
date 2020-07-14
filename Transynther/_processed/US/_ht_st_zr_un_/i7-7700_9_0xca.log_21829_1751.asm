.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3704, %rsi
lea addresses_normal_ht+0x9310, %rdi
clflush (%rsi)
and %r12, %r12
mov $58, %rcx
rep movsb
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x1097c, %r12
nop
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x15704, %rdi
nop
nop
nop
nop
nop
and $20410, %r10
movb (%rdi), %al
nop
and %rax, %rax
lea addresses_A_ht+0x6de0, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%rax)
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x19168, %rsi
nop
nop
sub %r11, %r11
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
nop
and $23539, %r11
lea addresses_WT_ht+0x697c, %r11
clflush (%r11)
and %rsi, %rsi
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
and $42100, %r12
lea addresses_A_ht+0x517c, %r10
xor %rcx, %rcx
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xec3c, %r12
nop
xor $60028, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x17ada, %rdi
nop
nop
nop
add %rax, %rax
mov (%rdi), %r12w
nop
nop
add $13450, %r10
lea addresses_UC_ht+0x17b7c, %rsi
lea addresses_D_ht+0x38bc, %rdi
nop
nop
nop
nop
nop
sub $14022, %r11
mov $47, %rcx
rep movsl
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x2b7c, %r12
nop
nop
nop
nop
and $40903, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r12)
nop
nop
add $59429, %rax
lea addresses_normal_ht+0xf97c, %rsi
lea addresses_A_ht+0x60c8, %rdi
nop
inc %r11
mov $81, %rcx
rep movsq
nop
nop
nop
nop
cmp $9494, %r12
lea addresses_UC_ht+0x11a6c, %rcx
nop
nop
cmp $13970, %r10
mov (%rcx), %esi
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x13ae4, %rsi
lea addresses_UC_ht+0x1097c, %rdi
nop
nop
nop
inc %r13
mov $29, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $41568, %r13
lea addresses_normal_ht+0xc37c, %r12
nop
nop
nop
nop
nop
inc %rcx
mov (%r12), %r13
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x13f7c, %r11
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x1e97c, %rsi
nop
inc %rdx
mov (%rsi), %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 183, '47': 826, '00': 14840, '70': 85, '53': 687, 'de': 6, '49': 691, 'bf': 1, '80': 1, 'dc': 5, 'ff': 4502, '02': 1, '7d': 1}
00 00 00 00 ff ff 44 00 00 00 00 ff 00 00 00 44 ff 47 00 00 00 00 00 00 00 00 00 00 00 00 49 00 47 ff ff ff 47 00 00 00 00 00 ff ff 00 00 00 00 ff 00 ff 00 00 00 00 00 00 00 00 ff ff ff 00 ff ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 49 00 53 47 00 00 00 00 47 ff ff 00 ff 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 47 00 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 47 00 00 00 ff ff 49 00 00 00 00 00 ff ff 00 00 ff ff 00 00 00 00 00 00 00 00 ff 00 00 49 ff ff 00 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 47 53 00 47 00 ff 00 00 00 00 47 49 ff 00 00 ff ff ff 00 00 00 00 ff 00 ff 00 00 00 00 00 ff 53 47 00 ff 00 00 00 00 00 00 00 00 49 ff ff 49 ff ff ff 00 47 ff ff ff 00 00 00 00 ff ff 00 00 ff 00 ff ff 47 00 00 44 00 00 00 00 00 00 00 00 47 ff 00 ff 53 00 ff ff 00 00 00 00 00 47 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 ff 00 00 ff 00 ff 00 47 00 ff ff 00 00 ff 00 00 00 00 00 00 ff 00 00 00 00 00 47 00 ff 00 00 00 00 00 00 ff ff 00 00 ff 47 00 00 00 00 44 ff 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 ff ff 00 53 00 00 ff 47 00 00 00 00 00 ff 49 00 00 ff ff ff 00 00 00 ff ff ff 00 00 00 00 00 00 00 00 00 00 ff ff 00 00 ff 49 49 ff 00 ff 00 ff 00 00 00 ff 00 00 53 00 00 00 ff 00 00 00 00 ff 44 00 00 ff ff 00 00 ff 44 ff 49 ff ff 00 ff 00 00 00 00 00 ff 00 00 ff 00 ff 00 00 00 00 ff ff ff 53 00 00 00 00 00 49 00 00 ff 00 ff 49 ff ff ff ff 44 00 00 ff ff 00 00 00 00 00 47 00 ff ff 00 ff 00 00 00 ff ff 00 53 00 00 00 00 00 00 00 00 49 00 00 00 ff 00 53 00 00 00 00 00 49 00 00 00 00 00 00 00 53 00 53 00 00 ff 00 00 47 00 00 00 00 00 00 00 00 00 00 00 49 00 00 ff 47 00 00 ff 00 00 00 00 00 47 00 00 00 47 00 ff 00 00 49 00 00 00 00 00 47 00 00 00 00 00 00 ff 00 00 00 ff ff 00 00 ff 00 00 00 00 53 00 ff 00 00 53 ff 00 00 00 00 00 00 47 00 ff 00 00 49 00 00 00 00 ff 47 00 00 ff 53 00 00 00 ff 00 00 47 00 00 00 00 00 00 00 00 ff 00 ff ff ff 00 00 00 00 ff 00 00 00 00 53 00 ff ff ff 00 00 00 00 00 ff 00 ff 49 00 00 ff 00 00 ff 53 00 ff 00 00 ff 53 ff 00 47 00 00 00 00 00 00 00 00 ff 00 ff ff 00 00 00 00 ff ff 00 00 00 ff 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 49 00 00 47 ff 00 00 00 ff 70 00 00 00 00 ff 00 ff ff 00 00 00 00 00 ff 49 00 00 ff 00 00 47 00 49 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff 00 00 ff 00 ff 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 ff 00 00 00 44 00 47 00 ff 49 00 00 00 ff 49 ff ff 00 00 00 00 00 49 00 00 00 00 00 47 00 47 ff ff 53 00 de 53 ff 00 00 00 00 00 ff 49 00 00 ff 00 00 00 00 00 ff 00 ff 47 00 44 00 00 00 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 ff 00 00 53 00 00 00 00 00 00 00 49 49 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 47 00 00 00 ff 00 ff ff ff ff 00 00 00 00 ff 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 44 00 00 00 ff ff 00 00 ff ff 00 00 00 00 00 00 00 ff 00 00
*/
