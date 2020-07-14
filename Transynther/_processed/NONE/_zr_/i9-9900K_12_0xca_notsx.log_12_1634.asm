.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x191c0, %rsi
lea addresses_WC_ht+0x17280, %rdi
sub %r10, %r10
mov $125, %rcx
rep movsw
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x10740, %r9
nop
add %rsi, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, (%r9)
nop
nop
nop
add $3955, %r9
lea addresses_UC_ht+0x1d1c0, %r10
nop
add %rbx, %rbx
mov (%r10), %r9w
nop
nop
and $15896, %rdi
lea addresses_WC_ht+0xf940, %r10
sub $48164, %rdi
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Store
mov $0x70f20900000001dc, %rdx
nop
nop
nop
nop
nop
sub $12475, %r8
movb $0x51, (%rdx)
nop
nop
inc %r11

// Load
lea addresses_A+0xf1c0, %rcx
xor $16813, %r13
mov (%rcx), %r15w
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_normal+0xdb00, %rcx
nop
nop
nop
xor $3029, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0xf1c0, %r11
nop
nop
nop
sub %rcx, %rcx
mov (%r11), %di
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 7}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
