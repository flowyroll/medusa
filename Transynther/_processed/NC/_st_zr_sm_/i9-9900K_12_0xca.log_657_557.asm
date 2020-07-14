.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd805, %rsi
lea addresses_UC_ht+0x15939, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r8, %r8
mov $6, %rcx
rep movsb
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x157cf, %rbx
nop
nop
nop
nop
cmp $3118, %rdx
mov (%rbx), %rdi
nop
nop
cmp $51245, %rcx
lea addresses_UC_ht+0x1a3ed, %rsi
lea addresses_A_ht+0x5545, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $42264, %r13
mov $61, %rcx
rep movsq
nop
nop
nop
add $261, %r9
lea addresses_WC_ht+0x16dc5, %r13
nop
nop
nop
nop
inc %rsi
movw $0x6162, (%r13)
nop
nop
nop
cmp $26427, %r13
lea addresses_A_ht+0x185, %rsi
lea addresses_WT_ht+0x15959, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r13, %r13
mov $21, %rcx
rep movsl
nop
dec %rsi
lea addresses_WT_ht+0x1c005, %rsi
lea addresses_normal_ht+0x1d0f5, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
dec %r9
mov $67, %rcx
rep movsq
nop
nop
nop
nop
nop
and $57791, %r8
lea addresses_normal_ht+0x1105, %r8
nop
nop
nop
nop
and $25530, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r8
movntdq %xmm1, (%r8)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x2f45, %rbx
cmp %r8, %r8
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
dec %rdx
lea addresses_A_ht+0x7d77, %rsi
nop
nop
nop
nop
add $12967, %rbx
mov (%rsi), %r9
nop
nop
nop
nop
xor $61180, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rdx

// Load
lea addresses_D+0xaf3d, %r10
nop
nop
add $64226, %rdx
mov (%r10), %r15d
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0x6915ca0000000d45, %rdx
nop
nop
nop
nop
nop
dec %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
dec %r14

// Store
mov $0x60e20a0000000805, %r15
nop
sub %rax, %rax
movl $0x51525354, (%r15)
and %rax, %rax

// Load
mov $0x60e20a0000000805, %rbp
clflush (%rbp)
nop
nop
nop
xor $58062, %rdx
movb (%rbp), %bl
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_RW+0x14c05, %rdx
nop
nop
nop
dec %rbx
mov (%rdx), %bp
nop
nop
inc %rax

// Store
lea addresses_WT+0x10705, %rax
nop
nop
nop
nop
nop
and $57907, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
add $8333, %rax

// Faulty Load
mov $0x60e20a0000000805, %r10
nop
nop
nop
nop
nop
and %r15, %r15
mov (%r10), %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'54': 654, '00': 3}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
