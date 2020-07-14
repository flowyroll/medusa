.global s_prepare_buffers
s_prepare_buffers:
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x8599, %rsi
lea addresses_UC_ht+0x887d, %rdi
nop
nop
sub $32438, %rbp
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x129f5, %rdi
nop
nop
nop
sub $57587, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
and $0xffffffffffffffc0, %rdi
movntdq %xmm3, (%rdi)
add $17335, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rdi
push %rsi

// Store
lea addresses_normal+0x1789d, %r11
nop
nop
and %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_PSE+0x1cfad, %rsi
nop
add %rdi, %rdi
mov (%rsi), %r13w
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_US+0x1a93d, %r15
clflush (%r15)
nop
inc %rdi
vmovups (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'00': 95}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
