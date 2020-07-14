.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x13dc0, %rbx
clflush (%rbx)
nop
cmp $40479, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbx)
nop
nop
cmp %rbp, %rbp

// Store
mov $0x168, %r12
nop
nop
nop
nop
sub $52998, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r12)
nop
add %rdx, %rdx

// Faulty Load
mov $0x4096bb0000000fe8, %rbp
nop
nop
nop
cmp $32976, %rbx
mov (%rbp), %r8w
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'00': 3}
00 00 00
*/
