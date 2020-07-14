.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x312d, %r8
nop
nop
sub $15012, %rbp
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
sub $52732, %rsi
lea addresses_normal_ht+0x1721f, %r10
nop
nop
nop
nop
cmp $15076, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r10)
sub $34455, %r8
lea addresses_A_ht+0xb61f, %r11
nop
add %rbp, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %r11
movaps %xmm6, (%r11)
nop
sub $21458, %r8
lea addresses_A_ht+0x491f, %rsi
lea addresses_normal_ht+0xde9f, %rdi
cmp %rbp, %rbp
mov $5, %rcx
rep movsq
nop
add $55166, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0xfd1f, %r11
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
add $20228, %rdx

// Load
mov $0xf1f, %r11
nop
nop
nop
nop
nop
xor $17568, %r13
movb (%r11), %r12b
nop
nop
nop
nop
add $1335, %rax

// Store
mov $0x24b, %r14
clflush (%r14)
sub %rcx, %rcx
movb $0x51, (%r14)
nop
nop
nop
nop
inc %rdx

// Faulty Load
lea addresses_PSE+0x13d1f, %r12
nop
nop
nop
nop
inc %r14
mov (%r12), %edx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'33': 2}
33 33
*/
