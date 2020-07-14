.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x23e3, %rsi
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
nop
nop
and $65473, %r11
lea addresses_WT_ht+0xebe3, %rcx
clflush (%rcx)
nop
nop
nop
nop
add %r10, %r10
mov (%rcx), %r15d
add %r11, %r11
lea addresses_WC_ht+0x138e3, %r10
nop
nop
nop
nop
nop
dec %r9
mov (%r10), %ebp
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x169e3, %r10
nop
nop
nop
nop
nop
and %r11, %r11
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rcx
nop
add %r15, %r15
lea addresses_UC_ht+0x1e3, %rsi
lea addresses_WT_ht+0xa063, %rdi
nop
nop
nop
sub %r11, %r11
mov $108, %rcx
rep movsw
nop
nop
nop
inc %r15
lea addresses_WT_ht+0x38e3, %rsi
lea addresses_A_ht+0x42e3, %rdi
nop
nop
xor $13803, %r10
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x1855b, %rdi
nop
add %rbp, %rbp
mov (%rdi), %rcx
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x113ef, %r10
nop
nop
nop
dec %rsi
movw $0x6162, (%r10)
and $32623, %rcx
lea addresses_A_ht+0x11263, %r10
nop
nop
nop
nop
nop
xor %rdi, %rdi
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0xbae3, %r15
clflush (%r15)
nop
nop
sub $39383, %rsi
movb $0x61, (%r15)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xc9e3, %rsi
lea addresses_WC_ht+0x109e3, %rdi
nop
nop
nop
dec %rbp
mov $102, %rcx
rep movsq
nop
nop
nop
nop
add $35207, %rbp
lea addresses_A_ht+0x14ef3, %rsi
lea addresses_D_ht+0x14de3, %rdi
nop
xor $62288, %r9
mov $97, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x69e3, %rcx
nop
nop
nop
nop
add %r11, %r11
mov (%rcx), %di
add %rcx, %rcx
lea addresses_UC_ht+0x16823, %rsi
lea addresses_A_ht+0x17a3, %rdi
nop
nop
nop
cmp $25225, %r11
mov $8, %rcx
rep movsb
nop
nop
sub $53269, %rsi
lea addresses_A_ht+0x5055, %rsi
lea addresses_normal_ht+0x13fe3, %rdi
nop
nop
nop
xor $9288, %rbp
mov $81, %rcx
rep movsb
nop
and %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0x1af23, %rdx
nop
nop
nop
nop
xor $15186, %rax
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
sub %r15, %r15

// Faulty Load
mov $0x17ce4c00000009e3, %r13
nop
nop
cmp $40753, %rax
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %rax
and $0xff, %r15
shlq $12, %r15
mov (%rax,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'45': 28, '00': 169, '49': 9}
45 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 45 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 49 00 45 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 00 45 00 45 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 49 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00
*/
