.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x39ea, %rsi
lea addresses_UC_ht+0x160a, %rdi
nop
and %r9, %r9
mov $39, %rcx
rep movsw
add $41839, %rax
lea addresses_D_ht+0x872a, %rax
nop
nop
nop
nop
and %r10, %r10
mov (%rax), %ecx
nop
nop
dec %rax
lea addresses_A_ht+0x18e4e, %r10
nop
xor $12839, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
lfence
lea addresses_A_ht+0x189ca, %rsi
lea addresses_A_ht+0x5216, %rdi
nop
nop
nop
dec %rbx
mov $43, %rcx
rep movsb
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0xec0a, %r10
nop
dec %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x58ca, %rdi
nop
add $48986, %rax
movl $0x61626364, (%rdi)
dec %rsi
lea addresses_A_ht+0xec0a, %rsi
nop
sub $4521, %r10
mov (%rsi), %edi
inc %rax
lea addresses_UC_ht+0x1b2ca, %rbp
clflush (%rbp)
nop
nop
nop
nop
lfence
mov (%rbp), %r9d
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Load
lea addresses_RW+0x15b4d, %r8
nop
nop
nop
nop
nop
dec %r13
vmovaps (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
nop
cmp $38681, %r8

// Store
lea addresses_normal+0x7cca, %r15
nop
nop
nop
nop
nop
cmp $54224, %rdx
movb $0x51, (%r15)
nop
nop
dec %r13

// Store
mov $0x4d34a90000000afa, %rax
nop
sub $35182, %rbp
movl $0x51525354, (%rax)
nop
sub %r11, %r11

// Faulty Load
lea addresses_RW+0xeca, %rdx
clflush (%rdx)
nop
nop
cmp $2567, %r13
movups (%rdx), %xmm0
vpextrq $0, %xmm0, %r11
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'32': 206}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
