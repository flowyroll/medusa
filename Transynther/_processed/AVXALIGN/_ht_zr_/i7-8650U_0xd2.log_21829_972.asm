.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19b67, %r9
add %r11, %r11
movl $0x61626364, (%r9)
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x10d67, %r8
nop
and %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0x17967, %r8
clflush (%r8)
add %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%r8)
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x5767, %r11
nop
nop
cmp %r8, %r8
movups (%r11), %xmm2
vpextrq $0, %xmm2, %rcx
dec %rcx
lea addresses_WT_ht+0x5347, %r11
and $52087, %rdx
movb $0x61, (%r11)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_A_ht+0xcf53, %rdx
nop
nop
nop
nop
nop
sub $53367, %r8
mov (%rdx), %cx
nop
nop
nop
nop
nop
lfence
lea addresses_WT_ht+0x4c67, %rdi
nop
and $1086, %rdx
vmovups (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
nop
cmp $13211, %r11
lea addresses_A_ht+0xaf67, %rsi
lea addresses_A_ht+0x7ec7, %rdi
clflush (%rsi)
sub $1309, %r9
mov $102, %rcx
rep movsq
nop
nop
nop
nop
nop
add $43012, %r9
lea addresses_WC_ht+0x85ba, %rdx
nop
nop
nop
add %r10, %r10
movb $0x61, (%rdx)
nop
nop
and $38390, %r8
lea addresses_A_ht+0x6b67, %rsi
lea addresses_normal_ht+0x5f67, %rdi
nop
nop
xor %rdx, %rdx
mov $112, %rcx
rep movsb
nop
nop
nop
nop
and $1850, %r10
lea addresses_WT_ht+0x14c87, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rdx
mov (%rsi), %di
nop
nop
nop
nop
sub $31983, %r8
lea addresses_A_ht+0x142e7, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r10)
nop
nop
nop
cmp $41597, %r9
lea addresses_UC_ht+0x1e567, %rsi
lea addresses_A_ht+0x16367, %rdi
clflush (%rsi)
nop
nop
nop
and %r11, %r11
mov $62, %rcx
rep movsq
cmp $55242, %r11
lea addresses_normal_ht+0x7255, %rcx
xor %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
inc %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbx

// Store
lea addresses_normal+0x71e7, %r13
nop
nop
nop
nop
nop
cmp $36704, %r9
movb $0x51, (%r13)
nop
nop
xor %r13, %r13

// Store
lea addresses_D+0x1b767, %r15
nop
nop
inc %r14
movl $0x51525354, (%r15)

// Exception!!!
mov (0), %rbx
nop
nop
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_WC+0x14f67, %r13
dec %r14
movaps (%r13), %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 19423, '45': 1090, '49': 1316}
00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 45 00 00 00 00 00 45 00 00 00 00 00 00 00 49 45 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 00 45 00 00 00 49 00 00 00 00 00 00 49 45 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 45 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 45 00 00 00 00 00 00 49 00 00 49 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 45 00 00 00 00 00 49 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 45 00 00 00 00 45 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 45 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 45 00 00 49 00 00 00 00 00 00 00 00
*/
