.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xfb5c, %rsi
lea addresses_normal_ht+0x11f24, %rdi
nop
and %rax, %rax
mov $70, %rcx
rep movsl
nop
nop
inc %rdx
lea addresses_D_ht+0xc13c, %rbp
nop
cmp %rsi, %rsi
movl $0x61626364, (%rbp)
add $62161, %rdi
lea addresses_WC_ht+0x101fc, %rdx
clflush (%rdx)
nop
cmp %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rdx)
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x143fc, %rsi
lea addresses_D_ht+0x169fc, %rdi
clflush (%rdi)
and $57157, %r14
mov $66, %rcx
rep movsb
nop
and %r14, %r14
lea addresses_A_ht+0xd3fc, %rdi
nop
nop
nop
nop
xor $46522, %rcx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm4
vpextrq $0, %xmm4, %rbp
sub $16721, %rdx
lea addresses_WT_ht+0x19fc, %rcx
clflush (%rcx)
nop
nop
nop
and %rax, %rax
movl $0x61626364, (%rcx)
inc %rdx
lea addresses_WC_ht+0x187fc, %rbp
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %rbp
movaps %xmm4, (%rbp)
nop
nop
xor %r11, %r11
lea addresses_A_ht+0xa06b, %rsi
clflush (%rsi)
nop
nop
add $59855, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1b358, %rsi
lea addresses_WC_ht+0x951c, %rdi
nop
nop
nop
sub $40557, %r11
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $29824, %r11
lea addresses_D_ht+0x7dfc, %rcx
nop
nop
nop
nop
dec %rdi
movups (%rcx), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x28fc, %rsi
lea addresses_WC_ht+0x61fc, %rdi
xor $64292, %rdx
mov $22, %rcx
rep movsq
nop
nop
nop
add %rax, %rax
lea addresses_WT_ht+0xa9fc, %r14
nop
nop
and $49803, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
sub $55104, %rdx
lea addresses_normal_ht+0x91fc, %rsi
lea addresses_UC_ht+0x15c7c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rbp
mov $88, %rcx
rep movsq
add %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x6dee7b00000009fc, %rsi
nop
nop
nop
nop
nop
xor %r14, %r14
movb $0x51, (%rsi)
nop
nop
nop
xor $37722, %rsi

// Store
lea addresses_WC+0xafa4, %rdi
nop
nop
sub $36693, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
inc %rbp

// Faulty Load
lea addresses_A+0x1a9fc, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $63876, %rsi
mov (%rdi), %ebx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'51': 8}
51 51 51 51 51 51 51 51
*/
