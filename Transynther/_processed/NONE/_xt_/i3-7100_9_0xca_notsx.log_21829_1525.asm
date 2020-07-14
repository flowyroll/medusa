.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xdf35, %rdx
nop
nop
nop
nop
nop
xor $47023, %rsi
mov (%rdx), %eax
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x18fb5, %rcx
add %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xcc35, %r9
clflush (%r9)
nop
nop
sub $25169, %rdi
movb $0x61, (%r9)
and %rax, %rax
lea addresses_WT_ht+0x4035, %rsi
lea addresses_D_ht+0x81e1, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $87, %rcx
rep movsl
xor %rax, %rax
lea addresses_WC_ht+0x170d7, %rsi
lea addresses_D_ht+0x1b435, %rdi
clflush (%rdi)
nop
nop
nop
xor %r10, %r10
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WT_ht+0xb935, %rsi
lea addresses_D_ht+0xb775, %rdi
nop
add $34092, %r9
mov $86, %rcx
rep movsl
nop
nop
cmp $62545, %rdx
lea addresses_A_ht+0x70ff, %rsi
lea addresses_D_ht+0x13835, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $5455, %rdx
mov $112, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0xab1c, %rax
nop
nop
and $21165, %r9
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x19b35, %rax
clflush (%rax)
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rax)
nop
sub $33835, %rdi
lea addresses_A_ht+0x3ee5, %r10
sub %r11, %r11
movb (%r10), %dl
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x835, %rsi
lea addresses_normal_ht+0x19f45, %rdi
nop
and %r11, %r11
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rdi

// Load
lea addresses_UC+0x1435, %rax
nop
nop
nop
nop
cmp $4198, %rdi
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
nop
sub $55196, %r11

// Store
mov $0x201ca00000000b2b, %r14
nop
nop
nop
nop
and %r8, %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
inc %rdi

// Load
lea addresses_WC+0x1a435, %r8
add %r12, %r12
mov (%r8), %rax
nop
nop
nop
nop
nop
and $32775, %rbp

// Faulty Load
lea addresses_WT+0x1b835, %r8
nop
nop
nop
inc %r14
mov (%r8), %edi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
