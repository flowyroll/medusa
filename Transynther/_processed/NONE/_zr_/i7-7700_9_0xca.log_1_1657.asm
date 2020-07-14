.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d7f0, %r10
nop
and %rbp, %rbp
mov (%r10), %edi
nop
nop
nop
nop
nop
sub $49286, %r11
lea addresses_normal_ht+0xb880, %r13
nop
nop
nop
nop
nop
xor $41315, %rsi
movb $0x61, (%r13)
nop
nop
nop
nop
nop
sub $55672, %r11
lea addresses_UC_ht+0x1958e, %rsi
lea addresses_UC_ht+0x4404, %rdi
nop
nop
nop
nop
nop
sub $16122, %rbp
mov $38, %rcx
rep movsb
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x7c80, %r13
nop
nop
nop
nop
cmp $3823, %r11
mov (%r13), %rsi
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x11580, %rsi
lea addresses_D_ht+0x1e614, %rdi
nop
nop
nop
nop
nop
add $63384, %r11
mov $123, %rcx
rep movsl
add %r13, %r13
lea addresses_UC_ht+0x9480, %r13
dec %rbp
movb (%r13), %r10b
xor $24842, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rcx
push %rdi
push %rsi

// Store
mov $0x73ce4e0000000c80, %rsi
clflush (%rsi)
nop
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
cmp $34036, %r10

// Store
lea addresses_US+0x14080, %r10
clflush (%r10)
cmp %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r10)
nop
nop
nop
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_A+0x19080, %rdi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 1}
00
*/
