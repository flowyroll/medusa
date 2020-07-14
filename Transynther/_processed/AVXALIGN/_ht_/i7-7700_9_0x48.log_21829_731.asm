.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1d1a5, %r11
nop
nop
nop
nop
and $13587, %r10
movl $0x61626364, (%r11)
nop
add %r8, %r8
lea addresses_A_ht+0xa525, %rdx
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
and $52019, %rbx
lea addresses_WC_ht+0x1cba5, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add %r15, %r15
mov (%rbx), %r10
nop
nop
nop
sub $22244, %r8
lea addresses_WC_ht+0x1da81, %r10
nop
nop
nop
nop
inc %rbx
mov (%r10), %r8w
nop
nop
nop
nop
nop
add $49786, %rdx
lea addresses_A_ht+0x18ed5, %rsi
lea addresses_normal_ht+0x1b203, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rdx
mov $78, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_WT_ht+0x5525, %r8
xor $37102, %r11
mov (%r8), %rdi
nop
xor $64501, %rdx
lea addresses_WT_ht+0x16f45, %r10
cmp %r15, %r15
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
dec %r10
lea addresses_A_ht+0x8925, %rdi
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
inc %r11
lea addresses_A_ht+0x1935, %r8
and %rsi, %rsi
mov (%r8), %r10w
xor %rsi, %rsi
lea addresses_normal_ht+0x19625, %r10
nop
nop
dec %rcx
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm3
vpextrq $1, %xmm3, %r11
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rsi

// Store
mov $0x2e5, %r13
nop
nop
nop
nop
nop
cmp $54751, %r11
movw $0x5152, (%r13)
nop
add $1074, %r11

// Store
lea addresses_D+0x53a5, %rbx
add $32078, %rsi
movw $0x5152, (%rbx)
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
lea addresses_normal+0x12525, %r11
nop
nop
nop
nop
nop
sub $43958, %rbx
vmovntdqa (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'49': 10806, '45': 11023}
45 45 49 49 49 45 49 49 49 45 45 49 49 49 45 45 49 49 49 45 45 45 49 49 49 45 49 49 49 49 49 45 49 45 45 49 49 49 49 49 49 45 49 49 45 49 45 45 45 49 45 45 45 45 45 49 45 49 45 45 45 45 45 49 49 49 49 49 49 49 45 45 45 49 45 49 45 49 45 49 49 49 49 49 49 45 49 49 49 45 45 49 45 45 45 49 49 49 49 45 45 45 45 49 45 49 45 45 49 49 45 45 49 49 49 49 45 45 45 49 49 49 45 49 45 45 49 49 49 45 45 45 45 45 49 45 49 45 49 49 49 49 49 49 45 49 49 45 45 45 45 49 45 49 45 49 45 45 45 49 49 45 49 45 49 45 49 49 49 45 49 45 49 49 49 49 45 45 49 45 45 49 49 49 45 45 49 49 49 45 49 49 45 45 45 45 49 49 45 45 45 45 45 45 45 45 49 45 49 45 49 45 45 49 45 49 49 49 45 49 45 49 49 49 49 49 45 49 49 45 49 49 45 45 49 45 49 49 49 45 49 49 45 49 45 49 49 49 49 49 49 45 45 45 45 49 45 45 49 45 45 49 49 45 49 49 45 45 49 45 45 49 45 45 45 45 49 49 49 49 45 45 45 49 49 45 49 45 49 49 45 49 49 45 49 49 49 45 49 49 49 45 49 45 49 45 49 49 45 49 49 49 45 45 49 45 49 49 45 45 49 49 49 45 45 49 49 45 49 45 49 45 49 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 49 49 45 45 49 45 49 45 45 49 45 49 49 45 49 49 45 45 49 49 45 49 49 45 45 49 49 49 49 49 49 45 49 49 45 49 49 45 45 45 45 45 49 49 49 45 45 49 49 45 45 45 49 45 49 49 49 45 49 49 45 49 49 49 45 49 45 45 49 49 49 45 45 45 45 45 45 49 45 45 49 45 45 49 45 49 45 45 49 45 49 49 49 45 49 49 45 45 49 45 49 49 49 45 45 45 45 49 49 45 45 45 49 45 49 49 45 45 45 45 49 45 45 45 45 45 49 49 45 49 45 49 49 49 49 45 49 49 45 49 49 49 49 45 49 49 45 45 45 49 45 49 49 45 49 45 45 45 45 45 49 49 49 45 49 45 49 49 45 45 49 45 49 45 45 45 49 49 45 45 49 45 45 49 45 45 49 45 45 49 49 49 49 45 45 45 49 49 49 45 49 49 49 49 45 45 49 49 49 49 45 45 49 49 45 45 49 49 49 49 49 49 45 49 45 45 49 49 49 49 49 45 49 45 49 49 45 49 45 49 45 49 49 45 45 49 49 45 45 45 49 45 49 45 49 45 45 45 49 49 45 49 45 49 45 45 45 45 45 49 45 45 49 45 45 49 49 45 49 45 45 45 49 45 49 49 49 45 49 45 49 45 49 49 45 45 49 45 49 49 49 49 45 49 45 45 45 45 45 49 45 45 49 49 45 49 45 49 49 49 49 49 45 49 49 45 45 45 49 45 45 45 45 45 45 49 49 49 45 49 49 45 45 49 45 45 49 45 45 49 49 45 49 49 45 45 49 49 49 49 45 45 49 45 49 45 45 45 49 49 45 49 49 45 45 45 49 45 45 45 49 45 49 45 49 45 45 49 49 45 45 49 49 49 45 45 49 45 45 49 45 49 49 49 49 45 45 49 49 45 45 49 45 49 49 45 45 45 45 49 45 45 49 49 45 45 49 45 49 49 49 45 49 49 49 45 49 49 49 45 49 49 49 49 45 45 45 49 49 45 49 49 45 45 45 49 45 49 45 45 45 45 49 49 45 49 45 49 45 49 45 45 45 49 45 49 45 45 49 49 45 45 49 45 49 45 45 49 49 45 45 45 49 49 49 45 49 45 45 45 45 49 49 49 45 45 49 49 45 49 49 49 45 49 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 49 49 49 45 49 45 49 49 49 49 45 45 45 45 49 45 45 45 45 49 45 49 49 45 49 49 49 45 45 49 45 45 49 49 49 45 45 49 45 49 45 49 49 45 45 49 45 49 45 49 45 49 49 49 49 49 45 49 49 45 45 49 45 45 49 45 49 45 49 49 49 49 49 45 49 49 45 45 45 49 45 49 49 49 49 45 45 45 45 45 49 45 45 49 45 49 45 49 49 49 49 49 49 49 49 45 45 49 45 45 45 49 45 49 45 49 45 45 49 45 49 45 45
*/
