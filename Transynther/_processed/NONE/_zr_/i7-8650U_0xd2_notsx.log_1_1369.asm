.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x16770, %r14
dec %r10
movb $0x61, (%r14)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x7dd0, %r14
nop
mfence
movb $0x61, (%r14)
nop
nop
dec %rbx
lea addresses_A_ht+0xb9d0, %rcx
clflush (%rcx)
nop
nop
nop
nop
inc %r15
movl $0x61626364, (%rcx)
nop
nop
sub $23227, %r9
lea addresses_A_ht+0x13b00, %rsi
lea addresses_A_ht+0x14950, %rdi
clflush (%rsi)
nop
nop
nop
dec %r12
mov $90, %rcx
rep movsw
nop
xor %rdi, %rdi
lea addresses_D_ht+0xed84, %rcx
add %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0xafd0, %rsi
nop
nop
inc %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rsi)
cmp %r14, %r14
lea addresses_UC_ht+0x11dd0, %r9
xor %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
xor $48106, %r9
lea addresses_WC_ht+0x99d0, %rdi
nop
nop
nop
nop
nop
add $54439, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
lfence
lea addresses_WT_ht+0x66d0, %r9
nop
nop
nop
nop
nop
cmp $37477, %r15
mov (%r9), %r14d
nop
dec %rbx
lea addresses_WT_ht+0xe1d0, %rsi
lea addresses_WC_ht+0x155d0, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $10, %rcx
rep movsl
dec %r9
lea addresses_normal_ht+0x16ad4, %rdi
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
and %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx

// Store
mov $0x38d14e0000000538, %r12
nop
nop
nop
nop
dec %r15
movl $0x51525354, (%r12)
nop
and $60035, %rdi

// Load
lea addresses_D+0x101d0, %r15
and $45082, %rdx
mov (%r15), %r12
add $23944, %r15

// Faulty Load
lea addresses_A+0xa5d0, %rdi
nop
nop
nop
and %rcx, %rcx
mov (%rdi), %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 1}
00
*/
