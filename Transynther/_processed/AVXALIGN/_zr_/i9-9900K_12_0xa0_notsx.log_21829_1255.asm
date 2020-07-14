.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14e31, %r9
nop
nop
nop
nop
nop
add $2159, %rdi
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x64a0, %rdi
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%rdi)
nop
nop
nop
nop
add $38151, %rdx
lea addresses_A_ht+0xdc29, %rsi
lea addresses_WC_ht+0x8c69, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov $64, %rcx
rep movsq
nop
nop
nop
nop
and $48468, %rdi
lea addresses_D_ht+0x3e89, %rdx
cmp %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
xor $14255, %rcx
lea addresses_WT_ht+0x1b6a8, %rbx
xor $60654, %r9
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %rdx
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x4669, %rsi
lea addresses_UC_ht+0x136e9, %rdi
clflush (%rdi)
nop
nop
nop
and %rbx, %rbx
mov $119, %rcx
rep movsb
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x73e9, %r9
nop
inc %r8
mov (%r9), %esi
and $16553, %rdi
lea addresses_D_ht+0x2a69, %rbx
nop
and %rsi, %rsi
mov (%rbx), %r9d
nop
cmp %r9, %r9
lea addresses_D_ht+0x1a469, %rbx
nop
nop
add %r8, %r8
mov (%rbx), %ecx
nop
nop
add $38918, %rsi
lea addresses_WT_ht+0xdf79, %rsi
lea addresses_normal_ht+0x6709, %rdi
nop
nop
nop
nop
inc %r8
mov $15, %rcx
rep movsb
nop
nop
nop
cmp $32926, %r12
lea addresses_WC_ht+0x11169, %rcx
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
cmp $8188, %r12
lea addresses_normal_ht+0xb369, %rdi
nop
nop
nop
nop
nop
cmp $21914, %rdx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub $55245, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x6aa9, %rsi
lea addresses_D+0x1fb19, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r14, %r14
mov $34, %rcx
rep movsq
nop
nop
nop
nop
add $30677, %rdi

// Store
mov $0x5f2cb80000000469, %r14
nop
nop
nop
add $24867, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r14)
nop
nop
sub $62721, %r13

// Faulty Load
mov $0x1e36600000000069, %rsi
nop
xor %r14, %r14
mov (%rsi), %r15w
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
