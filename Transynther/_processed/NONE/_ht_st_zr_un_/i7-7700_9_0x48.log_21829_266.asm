.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x180e6, %rsi
nop
nop
nop
and %r11, %r11
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
nop
and %rbx, %rbx
lea addresses_WC_ht+0x19be6, %rsi
lea addresses_D_ht+0x53e6, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $15672, %r10
mov $28, %rcx
rep movsw
nop
nop
cmp $32362, %rcx
lea addresses_WC_ht+0x3ae6, %rsi
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
dec %rsi
lea addresses_A_ht+0x185e6, %rsi
nop
nop
dec %rdi
movw $0x6162, (%rsi)
nop
add %r11, %r11
lea addresses_A_ht+0x1ba3a, %r11
nop
sub $3466, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1ae6, %rsi
lea addresses_normal_ht+0x1e6, %rdi
clflush (%rdi)
nop
nop
xor $52567, %rax
mov $75, %rcx
rep movsl
nop
nop
inc %r11
lea addresses_A_ht+0x1ceba, %rsi
lea addresses_WC_ht+0x163e6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $63173, %r11
mov $112, %rcx
rep movsq
add $11579, %r10
lea addresses_UC_ht+0x16244, %rdi
nop
nop
nop
nop
xor $51921, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rdx
push %rsi

// Load
lea addresses_D+0x140a6, %r12
xor $24956, %rdx
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rsi
xor %rbp, %rbp

// Store
lea addresses_PSE+0xb206, %r10
nop
nop
add $7599, %r8
movb $0x51, (%r10)
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_WC+0x1f6e6, %rdx
cmp %rbp, %rbp
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r10
and $0xff, %r14
shlq $12, %r14
mov (%r10,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'3c': 49, 'd3': 19, '02': 32, '01': 11, '48': 83, '80': 13, 'ff': 28, 'de': 114, '45': 859, '00': 13631, 'c8': 6230, '44': 283, 'c7': 469, '7d': 1, 'e0': 7}
00 00 00 00 00 00 c7 00 00 00 00 00 c7 00 00 00 00 c7 00 00 c7 c7 00 c7 c7 00 02 45 00 00 00 00 c7 00 00 00 45 00 00 c7 00 00 00 00 00 c7 00 00 00 00 00 00 00 c7 00 c7 00 c7 00 00 c7 00 00 00 00 00 00 c7 00 44 00 00 00 c7 00 00 00 c7 00 d3 c7 00 de 00 c7 00 00 00 00 00 45 00 c7 00 c7 c7 00 00 00 c7 00 00 00 00 48 00 c7 00 00 c7 00 c7 00 c7 c7 c7 c7 c7 00 c7 00 00 00 00 c7 00 00 00 c7 c7 c7 00 00 00 00 00 00 44 00 c7 45 c7 00 00 00 c7 c7 00 00 00 00 c7 00 c7 c7 c7 00 c7 00 48 c7 c7 00 00 00 00 00 00 c7 00 c7 00 00 80 c7 c7 c7 00 ff c7 00 c7 00 00 45 c7 00 00 c7 00 00 45 c7 c7 00 00 c7 00 00 00 00 00 00 00 00 00 00 45 00 c7 00 00 00 00 c7 c7 00 00 45 c7 00 00 00 00 00 c7 00 44 00 00 00 c7 00 c7 00 c7 00 00 c7 00 c7 00 00 00 c7 00 c7 00 00 3c 00 00 c7 c7 00 00 00 45 80 00 00 c7 00 00 00 c7 c7 c7 00 00 00 00 00 00 c7 45 c7 00 00 c7 00 c7 c7 00 00 c7 00 00 c7 00 c7 00 00 c7 c7 c7 00 00 00 00 00 00 00 00 00 44 c7 00 00 00 00 00 00 00 c7 00 00 c7 00 00 c7 c7 00 00 c7 00 00 00 00 00 00 c7 c7 00 00 c7 44 00 00 c7 00 c7 c7 00 00 00 00 00 00 45 c7 00 c7 c7 00 c7 00 c7 00 00 00 45 00 45 00 48 00 00 00 00 3c c7 c7 00 00 00 00 00 c7 e0 00 00 00 00 00 00 00 c7 c7 00 00 00 c7 00 00 00 00 00 00 00 00 00 c7 c7 00 00 c7 c7 00 00 c7 00 00 00 00 00 45 00 c7 00 c7 00 45 c7 45 00 00 00 48 00 c7 00 00 c7 00 00 c7 00 00 3c 00 00 00 c7 00 00 c7 c7 00 45 00 00 00 c7 00 00 00 00 45 c7 c7 00 00 c7 c7 00 00 00 00 00 c7 c7 00 c7 00 00 00 00 00 00 c7 00 c7 00 c7 00 00 00 c7 00 00 c7 00 c7 c7 00 00 00 c7 00 45 c7 00 c7 00 00 00 c7 00 00 c7 00 00 c7 00 c7 c7 00 c7 00 de c7 c7 00 00 00 00 00 00 c7 00 00 00 00 00 00 00 00 c7 00 00 c7 00 c7 00 00 00 00 00 00 00 00 00 00 00 c7 00 00 c7 00 00 c7 de c7 45 00 c7 00 00 00 00 c7 00 00 c7 00 00 00 00 c7 00 c7 00 00 45 de c7 c7 00 00 00 c7 00 00 c7 c7 c7 45 00 00 c7 45 00 00 c7 00 c7 00 00 c7 00 00 00 00 c7 c7 00 c7 00 c7 c7 00 00 c7 00 00 c7 00 00 00 c7 00 00 00 00 00 45 c7 c7 00 00 00 00 00 c7 00 00 00 00 c7 c7 00 01 44 c7 c7 c7 00 00 00 00 c7 00 00 00 c7 c7 c7 00 c7 00 00 00 00 00 c7 c7 00 00 00 c7 00 c7 c7 00 00 c7 00 c7 00 00 c7 00 00 00 c7 c7 00 00 00 00 00 00 00 00 c7 00 c7 c7 45 c7 00 c7 00 c7 00 45 00 00 00 00 00 c7 00 c7 00 00 00 c7 00 c7 c7 00 00 45 c7 00 44 c7 00 00 00 c7 c7 00 c7 00 c7 00 00 c7 00 c7 00 00 00 00 c7 de c7 c7 c7 c7 00 c7 c7 00 00 00 45 c7 00 ff 00 00 00 c7 00 00 c7 00 00 00 c7 c7 c7 00 00 00 c7 00 00 00 00 44 48 00 00 00 00 00 c7 00 00 00 00 00 45 00 00 45 00 00 00 c7 00 c7 00 00 00 c7 00 00 00 c7 00 00 00 00 00 00 c7 00 00 c7 00 00 00 00 00 c7 00 00 00 00 c7 c7 00 00 00 00 00 00 00 00 c7 45 00 00 c7 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 c7 c7 00 c7 c7 00 00 00 00 c7 00 00 c7 00 c7 c7 00 00 00 00 00 00 00 00 c7 00 00 00 c7 00 c7 c7 00 00 c7 c7 c7 00 00 00 00 00 c7 00 45 00 00 00 00 00 00 c7 ff c7 00 c7 00 00 00 c7 00 c7 00 00 00 00 00 00 c7 00 00 c7 00 de c7 c7 00 c7 c7 00 00 00 00 c7 00 c7 00 00 00 00 c7 00 00 00 c7 00 c7 00 c7 00 c7 00 c7 00 c7 00 00 44 c7 00 00 00 00 c7 00 00 00 00 c7 00 00
*/
