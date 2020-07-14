.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1883b, %rsi
sub $33290, %r10
mov (%rsi), %rcx
inc %rdi
lea addresses_normal_ht+0x1827b, %rax
nop
nop
nop
sub $41797, %rbp
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm5
vpextrq $0, %xmm5, %r14
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x128db, %rax
clflush (%rax)
nop
nop
nop
nop
nop
cmp %r10, %r10
movb $0x61, (%rax)
nop
nop
nop
add $41233, %rax
lea addresses_D_ht+0x102fb, %rsi
lea addresses_normal_ht+0x180ca, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r14, %r14
mov $58, %rcx
rep movsb
nop
nop
nop
nop
sub $31587, %rsi
lea addresses_D_ht+0x42bb, %r10
nop
nop
nop
nop
and %r14, %r14
movw $0x6162, (%r10)
nop
nop
nop
add $15614, %rax
lea addresses_normal_ht+0x98bb, %r14
nop
nop
sub %rbp, %rbp
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp $31759, %rsi
lea addresses_D_ht+0x16efb, %rsi
lea addresses_WC_ht+0x198bb, %rdi
cmp $62684, %rdx
mov $33, %rcx
rep movsw
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1e3fb, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x18d3b, %r14
dec %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r14)
nop
nop
nop
nop
inc %r14

// Load
lea addresses_WC+0xb6e3, %rdx
nop
nop
sub %r8, %r8
mov (%rdx), %rcx
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_normal+0x1b74b, %r11
sub $17404, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
nop
inc %rcx

// Store
lea addresses_normal+0x31bb, %r10
nop
dec %r11
movb $0x51, (%r10)
sub %rcx, %rcx

// Store
lea addresses_PSE+0x1bbbb, %r8
nop
nop
nop
cmp $31199, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_D+0x1b6bb, %rdx
inc %r11
movb $0x51, (%rdx)
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_D+0xd8eb, %r11
nop
inc %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
xor %r10, %r10

// Store
mov $0x2ca6e80000000313, %r10
nop
cmp $46512, %rcx
movb $0x51, (%r10)
nop
nop
nop
nop
nop
sub $3046, %r8

// Faulty Load
lea addresses_US+0xb0bb, %r11
nop
nop
nop
nop
add %rcx, %rcx
vmovntdqa (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'46': 67, '00': 189, '44': 60, '47': 5}
46 00 44 00 00 46 46 00 00 00 00 00 00 44 00 44 00 00 00 00 46 00 00 00 44 44 00 44 00 44 46 00 00 44 46 44 46 44 00 46 00 00 44 00 00 00 00 00 44 00 46 00 00 00 00 44 46 00 00 46 46 46 44 00 00 00 44 00 00 00 46 00 00 46 00 46 47 44 44 00 00 44 44 00 00 47 44 00 00 00 46 44 00 00 46 46 00 44 00 46 00 00 00 00 46 00 00 44 44 00 44 00 00 00 00 46 44 00 44 44 46 00 44 00 44 00 00 00 44 00 00 00 00 00 46 46 44 46 00 46 46 44 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 46 44 00 00 00 44 00 00 00 00 44 00 00 46 00 00 44 00 00 44 00 46 46 46 00 46 00 00 00 00 00 46 00 46 00 46 00 00 44 00 00 00 00 46 46 46 00 00 00 46 00 46 00 46 46 00 00 44 00 44 44 00 00 00 00 46 00 00 00 44 00 00 44 44 00 46 44 46 00 00 00 46 44 47 46 00 00 46 44 46 46 00 00 44 46 00 00 44 00 00 00 46 00 44 46 00 00 00 46 00 46 44 00 44 46 00 44 46 00 46 00 00 00 00 47 00 00 00 44 00 00 00 46 00 44 00 00 00 47 00 00 46 00 00 44 00 00 00 00 46 44 00 00 00 44 00 44 46 00 00 00
*/
