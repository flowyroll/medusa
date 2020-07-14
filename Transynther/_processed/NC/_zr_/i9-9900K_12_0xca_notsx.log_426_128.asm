.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3311, %rsi
lea addresses_D_ht+0x109c9, %rdi
nop
nop
xor $57666, %r11
mov $17, %rcx
rep movsl
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x15711, %r8
nop
cmp %rax, %rax
movb (%r8), %r15b
nop
nop
nop
cmp $18535, %rax
lea addresses_UC_ht+0x182b1, %rcx
and $57040, %rdi
movl $0x61626364, (%rcx)
nop
dec %rax
lea addresses_WC_ht+0x6311, %rsi
lea addresses_D_ht+0x2af1, %rdi
nop
nop
mfence
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x7911, %r8
nop
nop
nop
nop
nop
xor %rax, %rax
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
and %r11, %r11
lea addresses_A_ht+0x15f11, %rax
nop
nop
nop
nop
sub %r15, %r15
mov (%rax), %rdi
nop
add %r12, %r12
lea addresses_WC_ht+0x11fb1, %rsi
lea addresses_WC_ht+0x17a11, %rdi
nop
add $11503, %r12
mov $94, %rcx
rep movsl
nop
nop
sub $19668, %r12
lea addresses_D_ht+0x5d11, %rsi
lea addresses_A_ht+0x4513, %rdi
nop
nop
sub $11340, %r15
mov $10, %rcx
rep movsq
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xec91, %r12
nop
nop
nop
dec %r8
mov (%r12), %rcx
nop
nop
nop
dec %rdi
lea addresses_A_ht+0x14111, %rdi
nop
nop
nop
add %r12, %r12
movb (%rdi), %al
nop
nop
nop
and $50125, %r15
lea addresses_WC_ht+0x1cd31, %r11
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r11)
nop
nop
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Load
mov $0x2a3dd00000000f11, %rsi
nop
nop
nop
nop
and $44659, %rdx
movb (%rsi), %r10b
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_WC+0x1e211, %rsi
nop
nop
nop
nop
nop
cmp $20048, %rdi
mov (%rsi), %r9d
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_PSE+0x15911, %rbx
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%rbx)
and $33465, %r10

// Load
lea addresses_US+0x222, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rsi
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %rbx
cmp %r14, %r14

// Faulty Load
mov $0x2a3dd00000000f11, %rdx
nop
nop
nop
xor $50730, %rdi
mov (%rdx), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'00': 426}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
