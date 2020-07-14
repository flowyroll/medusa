.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xa058, %rsi
lea addresses_WC_ht+0x1774c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r15
mov $32, %rcx
rep movsq
nop
xor $39484, %r14
lea addresses_WC_ht+0x10058, %r11
nop
nop
and %rbp, %rbp
mov (%r11), %edi
nop
nop
nop
nop
nop
cmp $14781, %r11
lea addresses_UC_ht+0xec28, %rcx
nop
inc %r14
movw $0x6162, (%rcx)
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xfe54, %rsi
lea addresses_A_ht+0x5a66, %rdi
nop
nop
nop
nop
nop
sub $48650, %rdx
mov $5, %rcx
rep movsb
nop
add $49636, %r14
lea addresses_WC_ht+0xfd58, %rsi
lea addresses_UC_ht+0x9718, %rdi
nop
sub %rbp, %rbp
mov $47, %rcx
rep movsl
nop
nop
and $42066, %rcx
lea addresses_UC_ht+0x2158, %r14
nop
nop
nop
nop
and $36092, %r11
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x12858, %rbp
nop
inc %rsi
movb $0x61, (%rbp)
nop
add $48523, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x2558, %rsi
nop
nop
sub $53038, %r10
movb (%rsi), %r11b
nop
cmp %rsi, %rsi

// REPMOV
mov $0x68675f000000049c, %rsi
lea addresses_PSE+0x2558, %rdi
nop
nop
nop
add $1518, %r11
mov $39, %rcx
rep movsb
nop
nop
nop
cmp $37323, %rsi

// Faulty Load
lea addresses_PSE+0x2558, %r10
cmp %rsi, %rsi
mov (%r10), %r11w
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'00': 237}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
