.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xef74, %r8
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r15
movq %r15, (%r8)
cmp $53502, %rdx
lea addresses_UC_ht+0x8364, %r8
clflush (%r8)
nop
and %r12, %r12
movups (%r8), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
nop
add $2445, %r15
lea addresses_normal_ht+0x13074, %rdx
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rdx)
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x13e74, %r11
sub %rdx, %rdx
mov (%r11), %r12d
sub $35751, %r12
lea addresses_WT_ht+0x1ef74, %rsi
lea addresses_WC_ht+0xa8f4, %rdi
nop
and %r15, %r15
mov $99, %rcx
rep movsb
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x11374, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1af34, %rsi
lea addresses_normal_ht+0x4a1a, %rdi
clflush (%rsi)
nop
nop
nop
sub $1021, %r8
mov $79, %rcx
rep movsl
nop
nop
lfence
lea addresses_A_ht+0x15174, %rdx
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
and $0xffffffffffffffc0, %rdx
movaps %xmm5, (%rdx)
nop
and %r15, %r15
lea addresses_WT_ht+0x3b2, %rcx
nop
nop
nop
nop
and %rdx, %rdx
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0x7113240000000774, %r9
sub %rsi, %rsi
movw $0x5152, (%r9)
nop
inc %rbp

// Faulty Load
lea addresses_WT+0xbf74, %rbx
nop
nop
nop
nop
nop
cmp %r11, %r11
mov (%rbx), %r15d
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 522}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
