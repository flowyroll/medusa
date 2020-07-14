.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a5e7, %rax
nop
nop
nop
nop
nop
xor $13881, %rbp
movb (%rax), %r14b
nop
nop
nop
nop
cmp $32364, %rax
lea addresses_A_ht+0xe67, %r9
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r9)
nop
nop
sub $23950, %rsi
lea addresses_WC_ht+0x197b7, %rsi
lea addresses_normal_ht+0x58c0, %rdi
nop
nop
xor $9263, %rbp
mov $57, %rcx
rep movsw
sub $12005, %r9
lea addresses_WT_ht+0x16467, %r9
clflush (%r9)
nop
nop
nop
nop
nop
cmp $41536, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r9)
nop
xor %r14, %r14
lea addresses_UC_ht+0x168a7, %rsi
dec %rax
mov (%rsi), %r14
nop
nop
inc %r14
lea addresses_UC_ht+0xc267, %r14
nop
nop
nop
nop
add %r13, %r13
movb (%r14), %al
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x14ab5, %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb (%rdi), %r14b
nop
nop
xor $40746, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xe67, %r12
xor $48337, %r11
movl $0x51525354, (%r12)
nop
nop
inc %r11

// Load
lea addresses_A+0x14667, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
cmp $33575, %r15

// Faulty Load
lea addresses_PSE+0xe67, %rcx
nop
dec %r9
mov (%rcx), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'54': 53}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
