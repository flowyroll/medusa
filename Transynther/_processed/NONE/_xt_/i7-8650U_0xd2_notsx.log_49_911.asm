.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x147c1, %rax
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rax)
nop
lfence
lea addresses_D_ht+0x18581, %rbp
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor $49882, %rax
lea addresses_UC_ht+0x7349, %rdi
nop
dec %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
and $60678, %r14
lea addresses_WC_ht+0x4741, %r13
nop
nop
nop
cmp $10721, %r12
movl $0x61626364, (%r13)
nop
nop
nop
nop
cmp $24717, %r10
lea addresses_UC_ht+0x10b81, %rsi
lea addresses_UC_ht+0xf89b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r10
mov $120, %rcx
rep movsq
sub %rbp, %rbp
lea addresses_D_ht+0x1e601, %rsi
lea addresses_WC_ht+0xf781, %rdi
nop
nop
nop
nop
nop
cmp $32678, %r10
mov $122, %rcx
rep movsb
nop
nop
dec %rbp
lea addresses_WC_ht+0x5b81, %r10
add $17821, %rax
movb $0x61, (%r10)
xor %r10, %r10
lea addresses_D_ht+0x89e9, %rsi
nop
nop
nop
sub %rax, %rax
movb (%rsi), %cl
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WT_ht+0x1b4c1, %rcx
nop
nop
nop
nop
nop
add $32052, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %rcx
vmovaps %ymm0, (%rcx)
dec %rax
lea addresses_UC_ht+0x17181, %r13
nop
nop
and $12358, %rcx
movb $0x61, (%r13)
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_WT+0x3b81, %rdx
nop
nop
nop
sub %r9, %r9
movb $0x51, (%rdx)
nop
nop
nop
nop
xor $20156, %rsi

// Load
mov $0xd1, %rbp
add %r12, %r12
movb (%rbp), %bl
add %rdx, %rdx

// Store
lea addresses_UC+0x15581, %rsi
nop
nop
nop
nop
nop
xor $39210, %rbp
movb $0x51, (%rsi)
and %rdx, %rdx

// Store
lea addresses_RW+0x107c1, %rbp
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
add %rbp, %rbp

// Store
lea addresses_PSE+0x6171, %rbx
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
add $26392, %rbp

// Store
lea addresses_A+0x10761, %r9
nop
dec %rdx
movb $0x51, (%r9)
inc %rsi

// Faulty Load
lea addresses_PSE+0x781, %rdx
nop
nop
nop
and $25765, %r14
movb (%rdx), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'33': 49}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
