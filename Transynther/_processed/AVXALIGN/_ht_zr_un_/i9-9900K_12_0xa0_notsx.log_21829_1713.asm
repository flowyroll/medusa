.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x2829, %rax
nop
nop
add $48728, %r11
mov (%rax), %r9d
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0xb231, %rsi
lea addresses_WC_ht+0x19b49, %rdi
nop
nop
cmp $39954, %rdx
mov $81, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xabc9, %rcx
nop
cmp %rsi, %rsi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x18641, %rcx
nop
nop
xor $4743, %rdi
mov (%rcx), %ax
and %rsi, %rsi
lea addresses_D_ht+0x183c9, %r11
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
add $63025, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_RW+0x1639b, %rsi
nop
nop
nop
and $32884, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_A+0x132f1, %rbp
clflush (%rbp)
nop
xor %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%rbp)
nop
nop
nop
sub $42426, %rbp

// Store
lea addresses_PSE+0x19b49, %rdi
add %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_D+0x5dc9, %rax
nop
nop
cmp $17878, %r9
movaps (%rax), %xmm6
vpextrq $1, %xmm6, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'08': 6, '48': 10077, 'ff': 7, '00': 11739}
00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 48 48 00 48 00 48 48 48 48 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 48 48 48 00 48 00 48 48 48 00 00 48 48 48 00 00 00 00 48 48 48 00 00 48 48 48 48 00 48 00 48 48 48 00 00 48 00 00 48 00 00 00 00 48 48 48 00 00 00 48 48 48 48 00 00 00 48 48 00 48 48 48 00 00 48 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 48 00 48 48 00 48 00 48 48 48 48 00 48 00 00 00 48 00 00 48 00 48 48 48 48 00 48 00 48 00 48 48 00 48 00 48 00 00 00 48 48 00 48 00 48 48 00 48 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 48 48 00 48 00 48 48 00 48 00 48 00 00 48 48 48 48 00 00 00 48 00 00 48 00 48 00 48 00 48 48 00 48 00 48 48 00 48 00 00 48 48 48 00 00 00 48 00 48 00 00 48 00 00 48 48 00 00 00 00 48 00 48 48 00 48 00 48 48 00 48 00 00 48 48 00 00 48 00 48 48 00 48 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 48 48 48 00 00 00 00 00 48 48 48 00 48 00 48 00 48 48 00 48 00 00 48 00 48 00 00 48 00 48 48 00 00 00 48 00 48 48 00 00 48 00 48 48 48 48 00 48 00 00 00 00 48 00 00 48 00 48 00 48 00 00 00 00 00 00 48 48 00 00 00 48 00 48 00 00 48 00 48 00 00 48 48 48 00 00 48 48 48 00 48 48 00 48 00 48 48 48 48 00 48 00 48 48 48 48 00 00 00 48 48 00 48 00 48 00 00 48 00 00 48 48 00 00 48 00 48 48 48 00 00 48 00 00 00 00 48 48 48 00 00 48 48 00 48 00 48 48 48 48 00 48 00 48 00 00 48 00 48 00 48 48 00 48 00 48 48 48 00 00 00 00 48 48 48 48 00 48 48 48 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 00 48 00 00 48 48 00 00 00 48 00 48 00 48 00 00 48 48 00 48 00 48 48 48 48 00 48 00 48 48 00 48 00 48 00 00 48 00 00 00 00 48 00 00 00 48 48 48 48 00 48 00 00 48 00 00 00 48 48 00 48 00 48 00 48 00 00 00 00 48 48 48 00 00 48 00 00 00 00 00 00 48 00 48 00 48 48 48 48 00 00 00 48 00 48 00 48 48 00 48 00 48 00 00 00 48 48 00 00 00 48 00 00 48 00 48 48 48 00 00 48 00 00 48 00 48 00 00 48 48 48 00 48 00 00 48 00 48 00 48 48 48 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 00 48 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 48 00 48 48 48 48 00 48 00 48 48 48 48 00 48 48 48 00 00 48 00 00 00 48 48 00 00 48 48 00 00 48 00 48 00 00 48 00 00 00 48 00 48 48 48 00 00 48 00 48 00 00 48 00 48 00 48 48 48 00 00 48 00 00 00 00 48 00 00 48 00 48 00 00 00 00 48 00 00 48 00 00 48 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 48 00 48 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 48 00 48 48 48 48 48 00 48 00 00 00 00 00 48 00 48 48 00 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 48 00 48 48 48 48 00 48 00 48 48 48 00 48 00 48 00 00 48 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 00 00 00 48 48 48 00 00 00 48 00 00 00 00 48 00 48 48 48 00 00 48 00 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 48 00 48 48 48 48 00 00 00 48 48 48 00 00 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 48 00 00 48 00 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 48 00 48 00 48 00 00 48 00 48 00 48 48 48 00 00 48 00 48 00 48 48 00 48 00 48 00 00 48 48 48 00
*/
